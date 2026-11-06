#!/usr/bin/env ruby
# Offline regression check: ruby _security/verify-ca-chains.rb /path/to/chains
require "openssl"
require "open3"
require "rubygems"
require "rubygems/openssl"
require "rubygems/request"
require "net/http"
require "bundler"
require "bundler/fetcher"

chains = Dir[File.join(ARGV.fetch(0), "**", "*.pem")].sort
abort "Expected all 16 incident chains, got #{chains.length}" unless chains.length == 16
stores = {
  "Ruby default" => -> { OpenSSL::X509::Store.new.tap(&:set_default_paths) },
  "Ruby bundle only" => -> {
    OpenSSL::X509::Store.new.tap { |s| s.add_file("/etc/ssl/certs/ca-certificates.crt") }
  },
  "Ruby hashed directory only" => -> {
    OpenSSL::X509::Store.new.tap { |s| s.add_path("/etc/ssl/certs") }
  },
  "RubyGems default plus bundled roots" => -> {
    Gem::Request.configure_connection_for_https(
      Net::HTTP.new("rubygems.org", 443), Gem::Request.get_cert_files
    ).cert_store
  },
  "Bundler #{Bundler::VERSION} actual store" => -> {
    Bundler::Fetcher.allocate.send(:bundler_cert_store)
  }
}
failures = []
control_file = Gem::Request.get_cert_files.find { |f| f.end_with?("GlobalSignRootCA_R3.pem") }
abort "Missing known-good GlobalSign R3 positive control" unless control_file
control = OpenSSL::X509::Certificate.new(File.read(control_file))
stores.each do |label, make_store|
  failures << "#{label}: known-good root rejected" unless make_store.call.verify(control)
  chains.each do |file|
    certs = File.read(file).scan(/-----BEGIN CERTIFICATE-----.*?-----END CERTIFICATE-----/m)
      .map { |pem| OpenSSL::X509::Certificate.new(pem) }
    store = make_store.call
    accepted = store.verify(certs.first, certs.drop(1))
    # An expiry, hostname, or network failure is not proof of distrust.
    unless !accepted && [OpenSSL::X509::V_ERR_UNABLE_TO_GET_ISSUER_CERT,
                        OpenSSL::X509::V_ERR_UNABLE_TO_GET_ISSUER_CERT_LOCALLY,
                        OpenSSL::X509::V_ERR_CERT_UNTRUSTED].include?(store.error)
      failures << "#{label}: #{File.basename(file)}: #{store.error_string}"
    end
  end
  puts "#{label}: checked #{chains.length} chains"
end
{
  "OpenSSL default" => [],
  "OpenSSL bundle only" => ["-no-CApath", "-no-CAstore", "-CAfile", "/etc/ssl/certs/ca-certificates.crt"],
  "OpenSSL hashed directory only" => ["-no-CAfile", "-no-CAstore", "-CApath", "/etc/ssl/certs"]
}.each do |label, options|
  output, status = Open3.capture2e("openssl", "verify", *options, control_file)
  failures << "#{label}: known-good root rejected: #{output}" unless status.success?
  chains.each do |file|
    output, status = Open3.capture2e("openssl", "verify", *options, "-untrusted", file, file)
    unless !status.success? && output.match?(/error (2|20|27) at/)
      failures << "#{label}: #{File.basename(file)}: #{output}"
    end
  end
  puts "#{label}: checked #{chains.length} chains"
end
abort failures.join("\n") unless failures.empty?
puts "PASS: all 16 chains rejected for missing/untrusted issuers in all 8 stores; positive controls trusted"

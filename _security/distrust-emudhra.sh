#!/bin/sh
# https://emudhra.we-have-a-problem.com/ (October 2026)
# Distrust BOTH the emSign root and Sectigo's AAA cross-signing root.
# Do not delete package-owned certificates: ca-certificates.conf is the
# persistent Debian policy used whenever the bundle/hash directory regenerates.
set -eu
sed -i \
  -e 's|^mozilla/emSign_ECC_Root_CA_-_G3.crt$|!&|' \
  -e 's|^mozilla/Comodo_AAA_Services_root.crt$|!&|' \
  /etc/ca-certificates.conf
update-ca-certificates --fresh

# Fail the image build if either affected root is still trusted (including
# via an unexpected duplicate certificate installed by the base image).
ruby -ropenssl -e '
  blocked = ["emSign ECC Root CA - G3", "AAA Certificate Services"]
  files = Dir["/etc/ssl/certs/*"].select { |f| File.file?(f) }
  files.each do |file|
    File.read(file).scan(/-----BEGIN CERTIFICATE-----.*?-----END CERTIFICATE-----/m).each do |pem|
      cert = OpenSSL::X509::Certificate.new(pem)
      cn = cert.subject.to_a.find { |name, _, _| name == "CN" }&.at(1)
      abort "Blocked root remains in #{file}: #{cn}" if blocked.include?(cn)
    end
  end
'

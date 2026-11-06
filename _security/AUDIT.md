# Container eMudhra trust remediation

Verified November 6, 2026 (UTC), scoped to `academic_website`, not a general
dependency/vulnerability review. No website source or published `docs/` files
were changed by this remediation.

## Remediation

- Initial Debian 13 container had `ca-certificates 20250419` and trusted both
  affected roots. The running store was immediately rebuilt without them.
- Rebuilt from `ruby:3.2`, base manifest
  `sha256:d3bcbd845d26ae1efafcc987f641aa9ac796267b9b857e0f196a2b05070c8330`.
  Installing `ca-certificates` fetched Debian's `20250419+deb13u1` update.
  The Dockerfile also enforces distrust of emSign ECC Root CA - G3 and
  AAA Certificate Services, before any gem download.
- Recreated image ID:
  `sha256:d69eeb5dfe5ea4a06d0cac8d8af85a552c2b334540259b69281b00a24a24f32b`.
  Ruby 3.2.11, Ruby/OpenSSL 3.5.5, Bundler 2.5.23,
  Debian Node `20.19.2+dfsg-1+deb13u3`.
- Node's bundled roots still contain the two roots, so image configuration
  explicitly selects `NODE_OPTIONS=--use-openssl-ca` instead.
- Persistent preview recreated with port 3005, the existing gem/source mounts,
  `unless-stopped`, and output exclusively in `/tmp/site`.

## Evidence

Downloaded `https://emudhra.we-have-a-problem.com/chains.zip`, SHA-256
`afb9d69e8e5fc9eb0c08d5fe4baafc67edbcced2d63af2f9deb62edb6431d4a9`.
Read the archive's regular/rollover instructions. It contains fourteen regular
chains and two self-issued key-rollover chains.

- Explicitly trusting the original two roots accepted **all 16** chains:
  regression baseline, not merely an outage/expiration test.
- `_security/verify-ca-chains.rb` rejected all 16 with issuer-trust errors in
  **eight** stores (128 checks): Ruby default, bundle-only, directory-only,
  actual RubyGems and Bundler stores, and OpenSSL default/bundle/directory.
  Known-good GlobalSign R3 root controls passed for every store.
- New-container Node HTTPS rejected all fourteen live incident hosts with
  `UNABLE_TO_GET_ISSUER_CERT_LOCALLY`, while `https://rubygems.org/` returned 200.
  Rollover fixtures are offline only; their OpenSSL-store rejection is covered
  above, not by this Node network test.
- Audited installed gem/Ruby PEM/CRT files: the only extra CA files were
  RubyGems' GlobalSign and GlobalSign R3 roots. EventMachine's client
  certificate/DH test fixtures are not additional trust roots. No Bundler
  CA override or disabled verification was configured.
- `bundle check` passed. Preview HTTP 200 response body was byte-identical
  before and after recreation. `_security/` was not published by Jekyll.
- Shell syntax checks and `git diff --check` passed.

Transient detailed evidence and the downloaded fixtures were retained outside
the repository in `/tmp/academic-ca-audit/`; fixtures were also copied to
`academic_website:/tmp/emudhra-chains`.

## Limits

Removing the roots intentionally also breaks unrelated certificate paths
relying exclusively on either root. This policy does not validate historical
traffic, detect prior compromise, or protect code that deliberately disables
verification, passes its own CA list, or overrides Node's CA selection.
Host-native execution and other containers are outside this audit's scope.
Future image/volume/dependency changes need rerunning these checks.

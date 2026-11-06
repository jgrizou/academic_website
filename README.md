# Academic Website

Personal academic website built with Jekyll, configured to deploy to jgrizou.com.

## Local Development

Requires either Ruby + Bundler, or Docker (the scripts fall back to Docker automatically).

### Preview locally
```bash
./serve.sh          # http://localhost:4000, auto-reloads on edits
./serve.sh 3005     # custom port
```
Preview output goes to a temp folder; it never touches `docs/`.

For the persistent Docker preview on port 3005, run `bash ./_security/run-preview.sh`.
This builds before replacing the named `academic_website` container, retains
the gem volume, and restores its `unless-stopped` restart policy.

### Container certificate trust
The Dockerfile refreshes Debian CA certificates and explicitly distrusts
`emSign ECC Root CA - G3` **and** `AAA Certificate Services` to cover the
October 2026 eMudhra compromise and its cross-signs. Node is configured to
use that same OpenSSL store rather than compiled-in roots. This deliberately
also rejects unrelated sites relying exclusively on either distrusted root.
Rebuild/recreate with `bash ./_security/run-preview.sh` after changing trust policy;
restarting an old image alone is insufficient. Host-native `serve.sh` and
`build.sh` depend on the host's separately maintained trust store.

Offline regression test (download and extract `chains.zip` from
https://emudhra.we-have-a-problem.com/ outside this repository):
```bash
docker cp /path/to/chains academic_website:/tmp/emudhra-chains
docker exec academic_website ruby _security/verify-ca-chains.rb /tmp/emudhra-chains
```
It checks all 14 regular and two key-rollover chains using Ruby/OpenSSL's
default store, isolated bundle/directory stores, and actual RubyGems/Bundler
stores with their additional bundled roots. Known-good root controls must
remain trusted. Only issuer-trust failures count as success, not timeouts.
Security helpers are under `_security/` so Jekyll does not publish them.

### Build for publishing
```bash
./build.sh
```
Runs `JEKYLL_ENV=production bundle exec jekyll build` into `docs/` and fails if any
local URLs (e.g. `0.0.0.0:4000`) leak into the output. Do not use plain
`jekyll build` / `jekyll serve` for publishing: development mode writes local
URLs and unminified HTML into `docs/`.

### Configuration
- Site URL: `url` in `_config.yml` (`https://jgrizou.com`)
- Local preview overrides: `_config.local.yml` (relative URLs)
- Output directory: `docs/` (GitHub Pages serves `main` → `/docs`, custom domain via `docs/CNAME`)

### Deployment
1. `./build.sh`
2. Commit source changes together with `docs/` and push to `main`

## Notes
- `.nojekyll` (copied into `docs/` at build time) tells GitHub Pages to serve `docs/` as-is instead of re-running Jekyll on it.
- All plugins are GitHub Pages whitelisted.

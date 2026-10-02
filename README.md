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

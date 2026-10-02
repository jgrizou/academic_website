#!/usr/bin/env bash
# Build the production site into docs/ (what GitHub Pages serves).
# Uses local Ruby/Bundler if available, otherwise Docker.
set -euo pipefail
cd "$(dirname "$0")"

if command -v bundle >/dev/null 2>&1; then
  bundle install --quiet
  JEKYLL_ENV=production bundle exec jekyll build
else
  docker build -q -t academic_website . >/dev/null
  docker run --rm -e JEKYLL_ENV=production \
    -v academic_website_gems:/usr/local/bundle \
    -v "$PWD":/usr/src/app academic_website \
    sh -c "bundle install --quiet && bundle exec jekyll build"
fi

# Guard against dev-mode URLs leaking into the published site.
if grep -rqE '(0\.0\.0\.0|localhost|127\.0\.0\.1):[0-9]+' docs --include='*.html' --include='*.xml'; then
  echo "ERROR: docs/ contains local URLs; do not commit this build." >&2
  exit 1
fi
echo "docs/ built for production."

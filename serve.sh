#!/usr/bin/env bash
# Local preview with auto-reload. Never touches docs/.
# Usage: ./serve.sh [port]   (default 4000)
set -euo pipefail
cd "$(dirname "$0")"
PORT="${1:-4000}"
ARGS="--config _config.yml,_config.local.yml --host 0.0.0.0 --port $PORT --watch --force_polling -d /tmp/academic_website_site"

if command -v bundle >/dev/null 2>&1; then
  bundle install --quiet
  JEKYLL_ENV=production exec bundle exec jekyll serve $ARGS
else
  docker build -q -t academic_website . >/dev/null
  exec docker run --rm -it -p "$PORT:$PORT" -e JEKYLL_ENV=production \
    -v academic_website_gems:/usr/local/bundle \
    -v "$PWD":/usr/src/app academic_website \
    sh -c "bundle install --quiet && bundle exec jekyll serve $ARGS"
fi

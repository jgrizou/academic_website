#!/usr/bin/env bash
# Recreate the persistent preview without touching the published docs/ tree.
set -euo pipefail
cd "$(dirname "$0")/.."
docker build --pull -t academic_website .
if docker container inspect academic_website >/dev/null 2>&1; then
  docker stop academic_website
  docker rm academic_website
fi
exec docker run -d --name academic_website --restart unless-stopped \
  -p 3005:3005 \
  -v academic_website_gems:/usr/local/bundle \
  -v "$PWD":/usr/src/app academic_website \
  sh -c 'bundle install --quiet && exec bundle exec jekyll serve --config _config.yml,_config.local.yml --host 0.0.0.0 --port 3005 --watch --force_polling -d /tmp/site'

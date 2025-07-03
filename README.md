# Academic Website

Personal academic website built with Jekyll, configured to deploy to jgrizou.com.

## Local Development

### Prerequisites
- Ruby and Bundler installed
- Run `bundle install` to install dependencies

### Build Website
```bash
# Compile website to docs/ folder
bundle exec jekyll build

# Serve locally for development (with auto-reload)
bundle exec jekyll serve
# Then visit http://localhost:4000
```

### Configuration
- Site configured for domain: `jgrizou.com`
- Output directory: `docs/` folder
- Main config: `_config.yml`

### Deployment
1. Run `bundle exec jekyll build` to compile
2. Upload contents of `docs/` folder to web server
3. Point domain to serve from uploaded files

## Deployment Options

### Option 1: GitHub Pages with Custom Domain (Recommended)
1. Remove `destination: docs` from `_config.yml`
2. Push to GitHub repository
3. In GitHub Settings → Pages, set custom domain to `jgrizou.com`
4. GitHub will automatically build and deploy

### Option 2: Manual Deployment (Current Setup)
1. Run `bundle exec jekyll build`
2. Upload `docs/` folder contents to web server

## Notes
- Fully compatible with GitHub Pages
- Currently configured to build to `docs/` for manual deployment
- All plugins are GitHub Pages whitelisted

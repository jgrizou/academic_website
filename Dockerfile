# Base image: Ruby with necessary dependencies for Jekyll
FROM ruby:3.2

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy Gemfile and lockfile so installed gems match the lock
COPY Gemfile Gemfile.lock ./

# Install bundler and dependencies
RUN gem install bundler:2.3.26 && bundle install

# Expose port 4000 for Jekyll server
EXPOSE 4000

# Local preview: production env + local override (relative URLs), output
# outside docs/ so the published build is never overwritten by a dev build.
ENV JEKYLL_ENV=production
CMD ["bundle", "exec", "jekyll", "serve", "--config", "_config.yml,_config.local.yml", \
     "--host", "0.0.0.0", "--watch", "--force_polling", "-d", "/tmp/site"]

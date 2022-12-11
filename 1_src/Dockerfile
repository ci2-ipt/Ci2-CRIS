FROM ruby:3.1.2 as base
RUN apt-get update -qq && apt-get install -yq --no-install-recommends \
    build-essential \
    gnupg2 \
    less \
    git \
    libpq-dev \
    postgresql-client \
    libvips42 \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN gem update --system && gem install bundler
RUN mkdir /app
WORKDIR /app
EXPOSE 3000

# for local development
FROM base as local-stage
WORKDIR /app
# controlled by docker-compose.local.yml
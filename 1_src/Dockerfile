FROM ruby:3.1.2 as base
RUN apt-get update -qq && apt-get install -yq --no-install-recommends \
    build-essential \
    gnupg2 \
    less \
    git \
    libpq-dev \
    postgresql-client \
    libvips42 \
    mariadb-client \
    curl \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN curl -sL https://deb.nodesource.com/setup_16.x  | bash -
RUN apt-get -y install nodejs
RUN npm install -g yarn
RUN gem update --system && gem install bundler
RUN mkdir /app
WORKDIR /app
# we pre install gems to take advantage of docker cache
COPY Gemfile Gemfile.lock ./
RUN bundle install
EXPOSE 3000

# for local development
FROM base as local-stage
WORKDIR /app
# controlled by docker-compose.local.yml
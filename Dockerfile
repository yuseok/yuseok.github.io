FROM ruby:latest

WORKDIR /usr/src/app

COPY Gemfile ./

RUN bundler install && ls -al \
    && cat ./Gemfile \
    && cat ./Gemfile.lock

# COPY . .

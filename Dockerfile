FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

EXPOSE 3000
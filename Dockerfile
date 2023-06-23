FROM ruby:3.1.3

WORKDIR /usr/src/app

RUN apt-get update 

COPY Gemfile* .

RUN bundle install

COPY . .

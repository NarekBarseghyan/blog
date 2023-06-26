FROM ruby:3.1.3

WORKDIR /usr/src/app

RUN apt-get update 

WORKDIR /app

RUN gem install mysql2

COPY Gemfile* .

RUN bundle install

COPY . .

FROM ruby:3.1.3

RUN apt-get update 

WORKDIR /app

RUN gem install mysql2

COPY Gemfile* .

RUN bundle install

COPY . .

EXPOSE 3000

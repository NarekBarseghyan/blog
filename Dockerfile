FROM ruby:3.1.3

RUN apt-get update 

COPY Gemfile* ./

RUN bundle install

COPY . .

EXPOSE 3000

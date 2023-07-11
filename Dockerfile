FROM ruby:3.1.3

#RUN apt-get update -qq
#RUN apt-get install -y build-essential libpq-dev

WORKDIR /app

COPY Gemfile* .

RUN bundle install


COPY . .


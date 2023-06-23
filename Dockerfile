FROM ruby:3.1.3

RUN apt-get update 

WORKDIR /usr/src/app

COPY Gemfile* ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server"]

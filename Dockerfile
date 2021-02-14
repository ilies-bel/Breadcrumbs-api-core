FROM ruby:2.7.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN gem install bundler

RUN mkdir /project
WORKDIR /project

COPY Gemfile /project/Gemfile
COPY Gemfile.lock /project/Gemfile.lock

RUN bundle install
COPY . /project

RUN rails db:migrate
RUN rails db:seed

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]



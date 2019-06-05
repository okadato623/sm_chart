FROM ruby:2.4.1

ENV LANG C.UTF-8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /sm_chart
WORKDIR /sm_chart
ADD Gemfile /sm_chart/Gemfile
ADD Gemfile.lock /sm_chart/Gemfile.lock
RUN bundle install
COPY . /sm_chart
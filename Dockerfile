FROM ruby:2.4.1

ENV LANG C.UTF-8
RUN echo "deb http://deb.debian.org/debian jessie main" > /etc/apt/sources.list &&\
    echo "deb http://security.debian.org jessie/updates main" >> /etc/apt/sources.list 
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /sm_chart
WORKDIR /sm_chart
ADD Gemfile /sm_chart/Gemfile
ADD Gemfile.lock /sm_chart/Gemfile.lock
RUN bundle install
COPY . /sm_chart
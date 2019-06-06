FROM ruby:2.4.1

ENV LANG C.UTF-8
RUN echo "deb http://deb.debian.org/debian jessie main" > /etc/apt/sources.list &&\
    echo "deb http://security.debian.org jessie/updates main" >> /etc/apt/sources.list 
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# yarn 関連のインストール
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

# Node.jsをインストール
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - && \
    apt-get install nodejs

RUN mkdir /sm_chart
WORKDIR /sm_chart
ADD Gemfile /sm_chart/Gemfile
ADD Gemfile.lock /sm_chart/Gemfile.lock
RUN bundle install
COPY . /sm_chart
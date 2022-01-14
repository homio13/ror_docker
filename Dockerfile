FROM ruby:3.0.1

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
  build-essential \
  nodejs \
  imagemagick \
  default-libmysqlclient-dev

# myappディレクトリの作成
RUN mkdir /myapp
# 作業用ディレクトリとして設定
WORKDIR /myapp

# ローカルの Gemfile と Gemfile.lock をコンテナ内のmyapp配下にコピー
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock

# コンテナ内にコピーした Gemfile の bundle install
RUN bundle install

# ローカルのmyapp配下のファイルをコンテナ内のmyapp配下にコピー
ADD . /myapp

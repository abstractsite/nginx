FROM ruby:2.1
MAINTAINER marcus@abstractfactory.io

# Get system ready
RUN apt-get update
RUN apt-get install -y node python-pygments
RUN apt-get install -y git curl nano 
RUN apt-get install -y python python-dev python-distribute python-pip
RUN apt-get clean

# Install Jekyll
RUN gem install \
  github-pages \
  jekyll \
  jekyll-redirect-from \
  kramdown \
  redcarpet \
  sass \
  rdiscount \
  rouge

# Get site
RUN git clone https://github.com/abstractsite/rfc.git

EXPOSE 4000

WORKDIR /rfc

# Resolve dependencies
RUN bundle

RUN jekyll build

CMD jekyll serve --host 0.0.0.0

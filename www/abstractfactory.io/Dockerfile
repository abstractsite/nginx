FROM ubuntu:14.04

MAINTAINER Marcus Ottosson <marcus@abstractfactory.io>

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies
RUN apt-get update
RUN apt-get install -y -q \
    build-essential \
    ruby1.9.3 \
    python2.7 \
    ruby-bundler \
    libicu-dev \
    libreadline-dev \
    libssl-dev \
    zlib1g-dev \
    python-pip \
    git-core && \
    apt-get clean
RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

# Install gollum
RUN gem install gollum \
		asciidoctor \
		creole \
                redcarpet \
                github-markdown \
		org-ruby \
		RedCloth \
		wikicloth

RUN pip install docutils

# Expose default gollum port 4567
EXPOSE 80

ENTRYPOINT ["/usr/local/bin/gollum", "--port", "80"]

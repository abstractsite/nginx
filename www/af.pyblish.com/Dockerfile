FROM ruby:2.1
MAINTAINER marcus@abstractfactory.io

# Get system ready
RUN apt-get update
RUN apt-get install -y node python-pygments
RUN apt-get install -y git curl nano 
RUN apt-get install -y python python-dev python-distribute python-pip
RUN apt-get clean

# Get site
RUN git clone https://github.com/abstractsite/abstractfactory.io.git

EXPOSE 8000

WORKDIR /abstractfactory.io

RUN pip install -r requirements.txt

CMD gunicorn app.app:app --log-file -

FROM ubuntu
MAINTAINER marcus@abstractfactory.io

# Get system ready
RUN apt-get update
RUN apt-get install -y node python-pygments
RUN apt-get install -y git curl nano 
RUN apt-get install -y python python-dev python-distribute python-pip
RUN apt-get clean

EXPOSE 8000

# Get site
RUN git clone https://github.com/abstractsite/abstractfactory.io.git

WORKDIR /abstractfactory.io

RUN pip install -r requirements.txt

CMD gunicorn app.app:app --log-file - --bind 0.0.0.0:8000

FROM ubuntu
MAINTAINER marcus@abstractfactory.io

# Get system ready
RUN apt-get update &&\
	apt-get install -y \
        node \
       	python-pygments \
		git \
		curl \
		nano \
		python \
		python-dev \
		python-distribute \
		python-pip &&\
	apt-get clean

COPY app /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 80

CMD gunicorn app.app:app --log-file - --bind 0.0.0.0:80

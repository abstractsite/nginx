FROM ubuntu

RUN apt-get update
RUN apt-get install -y python python-pip nano curl httpie

RUN pip install flask requests gunicorn

COPY app.py /app/app.py

EXPOSE 80

WORKDIR /app

CMD gunicorn app:app --log-file - --bind 0.0.0.0:80

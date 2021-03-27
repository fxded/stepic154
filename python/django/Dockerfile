FROM python:3.8-slim-buster

RUN mkdir -p /home/box/web
WORKDIR /home/box/web
COPY ./python/django /home/box/web
#COPY ./hello.py /home/box/web

RUN pip install -r requirements.txt && \
	cp /usr/share/zoneinfo/Europe/Moscow /etc/localtime && \
	echo "Europe/Moscow" > /etc/timezone
#RUN django-admin startproject ask
#RUN gunicorn -b localhost:8000 myapp:app
#RUN gunicorn myapp:app
#RUN gunicorn -c gunicorn.conf hello:resp_app

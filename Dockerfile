FROM python:3.8.2-slim-buster

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

ENV PYTHONPATH="/usr/src/app/main"

RUN apt-get update 

CMD ["python","./aux/aux.py"]
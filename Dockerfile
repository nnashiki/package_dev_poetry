FROM python:3.7-stretch

RUN pip install -U pip
RUN pip install poetry
WORKDIR /usr/src/app

FROM python:3.8.2-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /docker-django

WORKDIR /docker-django

RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev

COPY requirements.txt /docker-django/

RUN pip install -r requirements.txt

COPY . /docker-django/

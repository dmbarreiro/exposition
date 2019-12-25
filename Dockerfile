FROM python:3.7-alpine
LABEL maintainer="david@dmbarreiro.com"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt \
    && mkdir app
WORKDIR /app
COPY ./app /app

RUN adduser -D app_runner
USER app_runner
FROM alpine:3.3
MAINTAINER Pasi Lammi <pasi.lammi@iki.fi>
RUN apk add --update python py-paramiko py-pip python-dev gcc musl-dev
RUN pip install parallel-ssh
RUN pip install --upgrade pip
RUN apk del python-dev gcc musl-dev
RUN rm -rf /var/cache/apk/*
RUN mkdir /app
WORKDIR /app

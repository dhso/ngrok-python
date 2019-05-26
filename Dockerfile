FROM python:2.7-slim
MAINTAINER dhso <dhso@163.com>

ENV NGROK_HOST ''
ENV NGROK_PORT 4443
ENV NGROK_BUFSIZE 8192

RUN mkdir -p /app

WORKDIR /app

COPY ngrok.json ngrok.json
COPY ngrok.py  ngrok.py

ENTRYPOINT python ngrok.py ngrok.json
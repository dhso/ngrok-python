FROM python:2.7-slim
MAINTAINER dhso <dhso@163.com>

ENV NGROK_HOST ''
ENV NGROK_PORT 4443
ENV NGROK_BUFSIZE 8192

RUN mkdir -p /app

COPY ngrok.json /app/ngrok.json
COPY ngrok.py  /app/ngrok.py

ENTRYPOINT cd /app && python ngrok.py ngrok.json
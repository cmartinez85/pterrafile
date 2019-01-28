FROM python:2.7-alpine
ENV PYTHONUNBUFFERED 1
ADD requirements.txt /
RUN apk add git \
    openssh-client \
 && pip install -r /requirements.txt \
 && rm /requirements.txt \
 && mkdir -p /app
WORKDIR /app
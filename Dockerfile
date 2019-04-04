FROM python:2.7-alpine
ENV PYTHONUNBUFFERED 1
ADD requirements.txt /
ADD setup /tmp
RUN apk add git \
    openssh-client \
 && pip install -r /requirements.txt \
 && pip install -e /tmp \
 && rm /requirements.txt \
 && rm -R /tmp/setup
 && mkdir -p /app
WORKDIR /app

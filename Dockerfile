FROM ubuntu:latest
MAINTAINER Matt Sparks <ms@quadpoint.org>

RUN apt-get update && \
  apt-get install -y npm && \
  apt-get clean && \
  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN npm install -g localtunnel

ENTRYPOINT ["nodejs", "/usr/local/bin/lt"]

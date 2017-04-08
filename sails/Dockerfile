FROM node:6-alpine

LABEL authors="Justin <digitaldrummerj@gmail.com>"

RUN apk update \
  && apk add --update alpine-sdk \
  && npm install -g sails grunt-cli \
  && apk del alpine-sdk \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache clear 

EXPOSE 1337

ENV HOME=/home/app
WORKDIR $HOME

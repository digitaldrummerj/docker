FROM node:6-alpine

LABEL authors="Justin <digitaldrummerj@gmail.com>"

RUN apk update \
  && apk add  xvfb chromium  \
  && apk add --update alpine-sdk \
  && npm install -g @angular/cli@1.0.0 \
  && apk del alpine-sdk \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache clear \
  && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd

ADD xvfb-chromium /usr/bin/xvfb-chromium
RUN ln -s /usr/bin/xvfb-chromium /usr/bin/google-chrome
RUN ln -s /usr/bin/xvfb-chromium /usr/bin/chromium-browser

# For tests
ENV DISPLAY :99
ENV CHROME_BIN /usr/bin/chromium-browser

EXPOSE 4200
EXPOSE 49153

ENV HOME=/home/app
WORKDIR $HOME

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
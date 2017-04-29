FROM node:6
MAINTAINER "Justin <digitaldrummerj@gmail.com>"

EXPOSE 4200
EXPOSE 49153
EXPOSE 9222
EXPOSE 9876

ENV HOME=/home/app
WORKDIR $HOME


# https://www.google.com/linuxrepositories/
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' >> /etc/apt/sources.list

RUN apt-get update && apt-get install --no-install-recommends -y google-chrome-stable
# Note that headless mode is only supported in Linux and you'll need a pretty recent Chrome version. Afaik Chromium from the Ubuntu PPAs doesn't support it yet for example.

RUN npm install -g @angular/cli && npm cache clean && rm -rf ~/.npm

# customLaunchers: {
#       ChromeCanaryHeadless: {
#         base: 'ChromeCanary',
#         flags: [
#           '--no-sandbox',
#           // See https://chromium.googlesource.com/chromium/src/+/lkgr/headless/README.md
#           '--headless',
#           '--disable-gpu',
#           // Without a remote debugging port, Google Chrome exits immediately.
#           ' --remote-debugging-port=9222',
#         ]
#       }
#     },

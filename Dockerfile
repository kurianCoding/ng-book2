from ubuntu:16.10

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y xz-utils
ENV NODE_VERSION 7.5.0
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" \
 && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc" \
 && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1 \
 && ln -s /usr/local/bin/node /usr/local/bin/nodejs
RUN mkdir /code
WORKDIR /code

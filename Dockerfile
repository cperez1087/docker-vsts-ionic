FROM microsoft/vsts-agent

ENV NODEJS_VERSION=8.2.1 \
    PATH=$PATH:/opt/node/bin

WORKDIR "/opt/node"

RUN apt-get update && apt-get install -y curl ca-certificates --no-install-recommends && \
    curl -sL https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.gz | tar xz --strip-components=1 && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

WORKDIR "/tmp"

ENV CORDOVA_VERSION 7.0.1
RUN npm i -g --unsafe-perm cordova@${CORDOVA_VERSION}

ENV IONIC_VERSION 3.5.0
RUN npm i -g --unsafe-perm ionic@${IONIC_VERSION}

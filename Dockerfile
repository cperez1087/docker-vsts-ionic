FROM microsoft/vsts-agent:latest

ENV NODE_VERSION 7.10.0
RUN ls ~ \
 && curl -sL https://git.io/n-install | bash -s -- -ny - \
 && ~/n/bin/n ${NODE_VERSION} \
 && rm -rf ~/n

ENV CORDOVA_VERSION 7.0.1
RUN npm uninstall -g cordova \
 && npm i -g cordova@${CORDOVA_VERSION}

ENV IONIC_VERSION 3.5.0
RUN npm uninstall -g ionic \
 && npm i -g ionic@${IONIC_VERSION}

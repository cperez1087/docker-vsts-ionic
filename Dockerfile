FROM microsoft/vsts-agent:latest

ENV NODE_VERSION 7.10.0
RUN ~/n/bin/n ${NODE_VERSION}

ENV CORDOVA_VERSION 7.0.1
RUN npm uninstall -g cordova
RUN npm i -g cordova@${CORDOVA_VERSION}

ENV IONIC_VERSION 3.5.0
RUN npm uninstall -g ionic
RUN npm i -g ionic@${IONIC_VERSION}

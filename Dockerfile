FROM microsoft/vsts-agent:latest

WORKDIR "/tmp"
ENV CORDOVA_VERSION 7.0.1
RUN npm i -g --unsafe-perm cordova@${CORDOVA_VERSION}

ENV IONIC_VERSION 3.5.0
RUN npm i -g --unsafe-perm ionic@${IONIC_VERSION}

WORKDIR /vsts

COPY ./start.sh .
RUN chmod +x start.sh

CMD ["./start.sh"]

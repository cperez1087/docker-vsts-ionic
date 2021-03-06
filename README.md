[![Pulls](https://img.shields.io/docker/pulls/cp1087/vsts-ionic.svg?label=docker%20pulls)](https://hub.docker.com/r/cp1087/vsts-ionic/)
[![Layers](https://img.shields.io/imagelayers/layers/cp1087/vsts-ionic/latest.svg?label=layers)](https://hub.docker.com/r/cp1087/vsts-ionic)
[![Size](https://img.shields.io/imagelayers/image-size/cp1087/vsts-ionic/latest.svg?label=image%20size)](https://hub.docker.com/r/cp1087/vsts-ionic)

# VSTS Agent with Lastest Ionic
Based on the latest Cordova, Node.js, and Android.

### Pull from Docker Hub
```
docker pull cp1087/vsts-ionic:latest
```

VSTS agents must be started with account connection information, which is provided through two environment variables:

VSTS_ACCOUNT: the name of the Visual Studio account
VSTS_TOKEN: a personal access token (PAT) for the Visual Studio account that has been given at least the Agent Pools (read, manage) scope.

### Run image
```
docker run -e VSTS_ACCOUNT=<name> -e VSTS_TOKEN=<pat> -it cp1087/vsts-ionic
```

# Rancher Compose Go Agent

Light weight container to provide `rancher-compose` functionalities.

Usage:

    docker pull amaysim/rancher-compose-goagent
    docker run -v $PWD:/app {rancher-compose command}

The default working directory is `/app` but you can overwrite it with whatever you want via `-w` 
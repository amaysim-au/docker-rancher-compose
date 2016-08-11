# Rancher Compose Go Agent

This is an extension to [amaysim/rancher-goagent](https://github.com/amaysim-au/rancher-goagent) to provide `rancher-compose` for Rancher deployments.

Usage:

    docker pull amaysim/rancher-compose-goagent
    docker run -v $PWD:/app {rancher-compose command}

The default working directory is `/app` but you can overwrite it with whatever you want via `-w` 
FROM amaysim/rancher-goagent:16.7.0

ENV RANCHER_COMPOSE_VERSION=v0.9.0 \
	RANCHER_COMPOSE_BIN=/usr/bin/rancher-compose

RUN curl -L https://github.com/rancher/rancher-compose/releases/download/${RANCHER_COMPOSE_VERSION}/rancher-compose-linux-amd64-${RANCHER_COMPOSE_VERSION}.tar.gz  | tar zxv && \
	mv rancher-compose-${RANCHER_COMPOSE_VERSION}/rancher-compose ${RANCHER_COMPOSE_BIN}

CMD ["rancher-compose", "-v"]
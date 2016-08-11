FROM alpine:3.4

ENV RANCHER_COMPOSE_VERSION=v0.9.0 \
	RANCHER_COMPOSE_BIN=/usr/bin/rancher-compose

WORKDIR /app

RUN apk --no-cache --update add curl && \
	curl -L https://github.com/rancher/rancher-compose/releases/download/${RANCHER_COMPOSE_VERSION}/rancher-compose-linux-amd64-${RANCHER_COMPOSE_VERSION}.tar.gz  | tar zxv && \
	mv rancher-compose-${RANCHER_COMPOSE_VERSION}/rancher-compose ${RANCHER_COMPOSE_BIN} && \
	rmdir rancher-compose-${RANCHER_COMPOSE_VERSION} && \
	apk del curl

CMD ["rancher-compose", "-v"]
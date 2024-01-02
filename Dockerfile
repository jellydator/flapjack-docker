# syntax=docker/dockerfile:1
FROM alpine:3.19
ARG FLAPJACK_VERSION=1.0.0

RUN apk add --no-cache ca-certificates
RUN wget -O /usr/bin/flapjack https://download.jellydator.com/${FLAPJACK_VERSION:1}/flapjack_${FLAPJACK_VERSION:1}_linux_amd64 \
	&& chmod +x /usr/bin/flapjack \
	&& flapjack version

EXPOSE 8985
VOLUME /data

ENTRYPOINT [        \
	"flapjack", \
	"engine",   \
	"run",      \
	"--no-browser", \
	"-d", "/data",  \
	"-L", "-",      \
	"-vv",          \
	"-m"            \
]

FROM alpine:3.19
ARG FLAPJACK_VERSION

RUN apk add --no-cache ca-certificates
RUN wget -O /usr/bin/flapjack https://download.jellydator.com/${FLAPJACK_VERSION:1}/flapjack-${FLAPJACK_VERSION:1}-linux64 \
	&& chmod +x /usr/bin/flapjack \
	&& flapjack version

EXPOSE 8985
VOLUME /data

ENTRYPOINT [        \
	"flapjack", \
	"engine",   \
	"run",      \
	"--no-browser" \
]
CMD [                   \
	"-d", "/data",  \
	"-L", "-",      \
	"-vv",          \
	"-m"            \
]

# syntax=docker/dockerfile:1
FROM alpine:latest as builder

RUN apk --no-cache add ca-certificates

WORKDIR /root/

ARG VERSION

RUN wget -O ./flapjack https://download.jellydator.com/${VERSION:1}/flapjack_${VERSION:1}_linux_amd64

RUN chmod +x ./flapjack

ENTRYPOINT ["./flapjack"]

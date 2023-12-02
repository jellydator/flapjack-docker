# syntax=docker/dockerfile:1
FROM alpine:latest as builder

RUN apk --no-cache add ca-certificates

WORKDIR /root/

ARG GITHUB_TOKEN
ARG ASSET_ID

RUN wget -O ./flapjack --header="Authorization: Token ${GITHUB_TOKEN}" https://api.github.com/repos/jellydator/flapjack/releases/assets/${ASSET_ID}

RUN chmod +x ./flapjack

CMD ["./flapjack"]

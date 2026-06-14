FROM golang:1.22-alpine as build

LABEL maintainer="Buckit, Inc <support@buckit.sh>"

ENV CGO_ENABLED=0

RUN apk add -U --no-cache ca-certificates git

WORKDIR /src
COPY . .
RUN go build -trimpath -tags kqueue -ldflags "$(go run buildscripts/gen-ldflags.go)" -o /mc .

FROM scratch

COPY --from=build /mc /usr/bin/mc
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

ENTRYPOINT ["mc"]

FROM alpine:latest

ENTRYPOINT ["/usr/bin/ncdu"]

WORKDIR /workspace

RUN apk add --no-cache ncdu

# running as unprivileged user not possible because:
#   needs to be able to (readonly) access all directory listings.
# USER 1000:1000

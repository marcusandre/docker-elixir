
#
# Elixir
#

FROM alpine:latest
MAINTAINER Marcus André <hello@marcusandre.de>

#
# System
#

RUN echo "ipv6" >> /etc/modules

RUN apk update \
  && apk upgrade \
  && apk add --update elixir \
  && rm -rf /var/cache/apk/*

#
# Entry
#

WORKDIR /
ENTRYPOINT ["elixir"]


#
# Elixir
#

FROM alpine:3.2
MAINTAINER Marcus André <hello@marcusandre.de>

#
# Pkg
#

ENV VERSION 1.1.1-r0
ADD config/repositories /etc/apk/repositories

#
# System
#

RUN echo "ipv6" >> /etc/modules
RUN apk update \
  && apk upgrade \
  && apk add --update ncurses-libs elixir=$VERSION \
  && rm -rf /var/cache/apk/*

#
# Entry
#

WORKDIR /
ENTRYPOINT ["elixir"]

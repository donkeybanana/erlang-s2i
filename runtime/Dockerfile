FROM alpine

ENV APP_NAME dockerwatch

LABEL io.openshift.s2i.assemble-input-files=/tmp/rel.tar \
      io.openshift.s2i.scripts-url=image:///opt/app-root/s2i

RUN apk add --no-cache openssl && \
    apk add --no-cache ncurses-libs

WORKDIR /opt/app-root

COPY s2i s2i

RUN chmod +x s2i/*

EXPOSE 8080
EXPOSE 8443

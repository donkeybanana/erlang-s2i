FROM erlang:alpine

LABEL io.openshift.s2i.scripts-url=image:///opt/app-root/s2i

WORKDIR /opt/app-root/src

COPY s2i /opt/app-root/s2i

RUN chmod +x /opt/app-root/s2i/*

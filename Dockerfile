FROM debian:stretch 

RUN apt-get update && \
apt-get install -y golang

ENTRYPOINT ["/go/bin/govc"]

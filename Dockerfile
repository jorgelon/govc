FROM debian:9-slim

RUN apt-get update && \
apt-get -y install curl jq && \
curl -L https://github.com/vmware/govmomi/releases/download/$(curl https://api.github.com/repos/vmware/govmomi/releases/latest -s | jq .name -r)/govc_linux_amd64.gz | gunzip > /root/govc && \
chmod +x /root/govc

ENTRYPOINT ["/root/govc"]

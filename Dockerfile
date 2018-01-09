FROM debian:9-slim


COPY govc /root/govc

RUN chmod +x /root/govc



#ENTRYPOINT ["/root/govc"]
CMD ["/root/govc"]



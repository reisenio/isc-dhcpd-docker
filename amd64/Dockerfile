FROM debian:latest

RUN apt-get update \
 && apt-get install -y isc-dhcp-server \
 && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /usr/sbin


ENTRYPOINT ["/usr/sbin/entrypoint.sh"]

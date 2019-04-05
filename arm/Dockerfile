
FROM reisen/debian-arm-qemu

RUN [ "cross-build-start" ]

RUN apt-get update \
 && apt-get install -y isc-dhcp-server \
 && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /usr/sbin/


RUN [ "cross-build-end" ]

ENTRYPOINT ["/usr/sbin/entrypoint.sh"]

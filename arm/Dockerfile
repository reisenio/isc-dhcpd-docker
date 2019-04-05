
FROM reisen/debian-arm-qemu

RUN [ "cross-build-start" ]

RUN apt-get update \
 && apt-get install -y isc-dhcp-server \
 && rm -rf /var/lib/apt/lists/*

RUN touch /var/lib/dhcp/dhcpd.leases
VOLUME ["/var/lib/dhcp", "/etc/dhcp"]

RUN [ "cross-build-end" ]

ENTRYPOINT ["/usr/sbin/dhcpd", "-d", "--no-pid"]

#!/bin/bash

mkdir -p /data/{etc,var}

if [ ! -f /data/etc/dhcpd.conf ]; then
  cp -pR /etc/dhcp/* /data/etc/
fi 
rm -Rf /etc/dhcp
ln -s /data/etc /etc/dhcp

if [ ! -f /data/var/dhcp.leases ]; then
  cp -pR /var/lib/dhcp/* /data/var
fi
rm -Rf /var/lib/dhcp
ln -s /data/var /var/lib/dhcp

/usr/sbin/dhcpd -d --no-pid







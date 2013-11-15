#!/usr/bin/env bash

cat <<RCLOCAL > /etc/rc.local
#!/bin/sh -e

iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 4001

exit 0
RCLOCAL
chmod u+x /etc/rc.local

/etc/rc.local

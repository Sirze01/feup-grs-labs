#! /bin/bash
ip route replace default via 172.16.123.129
ip addr add 10.0.2.1/24 dev eth0
ip addr del 10.0.2.254/24 dev eth0
ip addr add 10.0.1.1/24 dev eth1
ip addr del 10.0.1.254/24 dev eth1
ip route del 172.16.123.128/28 # enables the client to reach the dmz server but the router can't reach the dmz server

# iptables -t filter -A FORWARD -p tcp --dport 80 ! -s 10.0.1.253 -j DROP # forces proxy to be used

./root/sleep.sh

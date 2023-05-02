#! /bin/bash
ip addr add 10.0.2.1/24 dev eth0
ip addr del 10.0.2.254/24 dev eth0
ip addr add 10.0.1.1/24 dev eth1
ip addr del 10.0.1.254/24 dev eth1
# iptables -t filter -A FORWARD -p tcp --dport 80 ! -s 10.0.1.253 -j DROP
./root/sleep.sh

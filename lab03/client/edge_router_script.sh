#! /bin/bash
ip route replace default via 172.31.255.1
ip addr add 172.16.123.129/28 dev eth0
ip addr del 172.16.123.141/28 dev eth0
ip route add 10.0.0.0/8 via 172.16.123.142

iptables -t nat -F
iptables -t filter -F
iptables -t nat -A POSTROUTING -s 10.0.0.0/8 -o eth1 -j MASQUERADE
iptables -P FORWARD DROP
iptables -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -m state --state NEW -i eth0 -j ACCEPT
iptables -A FORWARD -m state --state NEW -i eth1 -d 172.16.123.128/28 -j ACCEPT

#iptables -t filter -A FORWARD -p tcp --dport 80 ! -s 10.0.1.253 -j DROP
./root/sleep.sh
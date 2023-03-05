#!/bin/bash

sysctl -w net.ipv4.ip_forward=1
iptables -t nat -A POSTROUTING -s 192.168.88.101 -o eth0 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 192.168.88.102 -o eth0 -j MASQUERADE

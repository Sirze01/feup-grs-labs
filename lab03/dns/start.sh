#!/bin/bash

#mv /etc/bind/named.conf.copy /etc/bind/named.conf.options
/usr/sbin/named -g -c /etc/bind/named.conf -u bind
while true
 do
        /bin/sleep 1m
 done
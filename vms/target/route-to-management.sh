#!/bin/bash

ip route del default
ip route add default via 192.168.88.100

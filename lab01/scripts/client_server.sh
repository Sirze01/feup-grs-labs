#! /bin/bash

sudo docker run -p 5001:80 -d --net client_net --ip 10.0.1.100 --cap-add=NET_ADMIN --name client --shm-size=1g --restart unless-stopped -v $(pwd):/browsertime sitespeedio/browsertime --video --speedIndex -n 100 http://10.0.2.100/
sudo docker run -p 8001:80 -d --net server_net --ip 10.0.2.100 --cap-add=NET_ADMIN --name load_balancer nginx_loadbalancer
sudo docker run -p 8001:80 -d --net server_net --ip 10.0.2.101 --cap-add=NET_ADMIN --name server1 nginx_server1
sudo docker run -p 8001:80 -d --net server_net --ip 10.0.2.102 --cap-add=NET_ADMIN --name server2 nginx_server2

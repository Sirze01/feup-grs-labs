#! /bin/bash

sudo docker rm -f client load_balancer server1 server2 router
sudo docker network rm client_net server_net

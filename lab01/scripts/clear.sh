#! /bin/bash

sudo docker rm -f client server server1 server2 router
sudo docker network rm client_net server_net

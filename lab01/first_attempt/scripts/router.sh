#! /bin/bash

sudo docker run -p 8001:80 -d --cap-add=NET_ADMIN --name router netubuntu
sudo docker network connect client_net router --ip 10.0.1.254
sudo docker network connect server_net router --ip 10.0.2.254

#!/bin/bash

sudo docker run -d -p 8081:80 --cap-add=NET_ADMIN --name nagios \
    -v $(pwd)/nagios/nagios/etc:/opt/nagios/etc \
    -v $(pwd)/nagios/nagios/var:/opt/nagios/var \
    -v $(pwd)/nagios/nagios/custom-plugins:/opt/Custom-Nagios-Plugins \
    -v $(pwd)/nagios/graph/etc:/opt/nagiosgraph/etc \
    -v $(pwd)/nagios/graph/var:/opt/nagiosgraph/var \
    --env-file $(pwd)/nagios/nagios.env \
    jasonrivers/nagios

sudo docker network connect client_net nagios
sudo docker network connect server_net nagios

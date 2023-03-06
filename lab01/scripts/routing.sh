#! /bin/bash

#sudo docker exec client /bin/bash -c 'ip r d default via 10.0.1.1'
sudo docker exec client /bin/bash -c 'ip r a 10.0.2.0/24 via 10.0.1.254'
#sudo docker exec server /bin/bash -c 'ip r d default via 10.0.2.1'
sudo docker exec server /bin/bash -c 'ip r a 10.0.1.0/24 via 10.0.2.254'

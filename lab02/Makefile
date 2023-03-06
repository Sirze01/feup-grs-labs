.PHONY: all clean setup docker_network client_server router routing nagios

all: setup docker_network client_server router routing nagios

clean:
	./scripts/clear.sh

setup:
	./scripts/setup.sh

docker_network:
	./scripts/docker_network.sh

client_server:
	./scripts/client_server.sh

router:
	./scripts/router.sh

routing:
	./scripts/routing.sh

nagios:
	./scripts/nagios.sh

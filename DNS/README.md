# DNS Server
https://hub.docker.com/r/sameersbn/bind
https://github.com/sameersbn/docker-bind

docker compose up DNS
## Simple test of the DNS service from local host
dig tcu.edu @127.0.0.1

# Make changes to the configuration files
## Log onto the DNS-server container instance
	docker exec -it DNS-server bash
	cd /data/bind/etc
	Modify named.conf.local
	Add/modify named.conf.default-zones
## Or, modify on the mounted directory 

## Restart the DNS-server container instance
docker compose restart DNS

# DNS Server
https://hub.docker.com/r/sameersbn/bind
https://github.com/sameersbn/docker-bind

## Start the DNS server
docker compose up dns
docker compose run dns 


## Simple test of the DNS service from local host
dig tcu.edu @127.0.0.1


# Make changes to the configuration files
## Log onto the DNS-server container instance
	docker exec -it dns-server bash
	cd /data/bind/etc
	Modify named.conf.local
	Add/modify named.conf.default-zones
## Or, modify on the mounted directory 

## Restart the DNS-server container instance
docker compose restart DNS

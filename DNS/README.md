# DNS Server
https://hub.docker.com/r/sameersbn/bind
https://github.com/sameersbn/docker-bind

docker compose run DNS
docker compose up DNS


docker exec -it DNS-server bash
cd /data/bind/etc
Modify named.conf.local
Add/modify named.conf.default-zones

# DNS Client
https://hub.docker.com/r/modularitycontainers/DNS-client/
https://github.com/container-images/DNS-client


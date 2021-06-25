# DNS Server
https://hub.docker.com/r/sameersbn/bind
https://github.com/sameersbn/docker-bind

docker compose up DNS
docker compose run DNS

docker exec -it DNS-server bash
cd /data/bind/etc
Modify named.conf.local
Add/modify named.conf.default-zones



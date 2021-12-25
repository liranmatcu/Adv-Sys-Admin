# DNS server docker image source
https://hub.docker.com/r/internetsystemsconsortium/bind9


# Start the DNS server
docker compose up dns      # show debug info
docker compose up -d dns   # run as a daemon; no debug info


## Simple test of the DNS service from local host
dig tcu.edu @127.0.0.1


# Make changes to the configuration files under ./conf

## Or, modify on the mounted directory by
## logging onto the DNS-server container instance
docker exec -it dns-server bash
## Then, restart the DNS-server container instance
docker compose restart dns

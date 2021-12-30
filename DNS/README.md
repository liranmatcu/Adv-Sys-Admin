# DNS server docker image source
https://hub.docker.com/r/internetsystemsconsortium/bind9


# Start the primary DNS server
docker compose up dns      # show debug info
docker network prune       # if needed

docker compose up -d dns   # run as a daemon; no debug info

# Make changes to the configuration files under ./conf

## Or, modify on the mounted directory by
## logging onto the DNS-server container instance
docker exec -it dns bash
## Then, restart the DNS-server container instance
docker compose restart dns


## Simple test of the DNS service from local host
dig tcu.edu @127.0.0.1



# Start the secondary DNS server
docker compose up dns-secondary


# nsupdate
docker compose run nsupdate -k keys/Ksamba.key

docker compose run nsupdate2 -k /keys/Ksamba.key

## or from network-tools
docker run --rm -it jonlabelle/network-tools
# DHCP Server
https://hub.docker.com/r/networkboot/dhcpd/
https://github.com/networkboot/docker-dhcpd

docker compose run DHCP-Server
docker compose up DHCP-Server

Make sure that an entry exits for your IP address subnet


### Other DHCP server
https://hub.docker.com/r/modularitycontainers/dhcp-server/
https://github.com/networkboot/docker-dhcpd



# DHCP Verification

docker compose run nmap --script broadcast-dhcp-discover
docker compose run nmap --script broadcast-dhcp6-discover
 

# DHCP Client

https://hub.docker.com/r/modularitycontainers/dhcp-client/
https://github.com/container-images/dhcp-client

docker run --net=host --cap-add=net_admin dhcp-client-container
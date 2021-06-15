# DHCP Server
https://hub.docker.com/r/networkboot/dhcpd/
https://github.com/networkboot/docker-dhcpd

docker compose run DHCP-Server
docker compose up DHCP-Server



### Other DHCP server
https://hub.docker.com/r/modularitycontainers/dhcp-server/
https://github.com/networkboot/docker-dhcpd



# DHCP Client
https://hub.docker.com/r/modularitycontainers/dhcp-client/
https://github.com/container-images/dhcp-client

docker run --net=host --cap-add=net_admin dhcp-client-container
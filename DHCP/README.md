# DHCP server docker image source 
https://hub.docker.com/r/networkboot/dhcpd/
https://github.com/networkboot/docker-dhcpd

# DHCP Server Configuration
Change the configuration file dhcpd.conf under ./server/conf/
Make sure that an entry exits for your IP address subnet

After make changes to the configuration, you can start the DHCP services

# Start DHCP Server container
docker compose up dhcp-server --remove-orphans
## docker compose up -d dhcp-server




# DHCP service verification
docker compose run nmap --script broadcast-dhcp-discover
## docker compose run nmap --script broadcast-dhcp6-discover
https://nmap.org/nsedoc/scripts/dhcp-discover.html 



# DHCP Client
docker compose run dhclient
https://hub.docker.com/r/modularitycontainers/dhcp-client/
https://github.com/container-images/dhcp-client



## Other DHCP server images
https://hub.docker.com/r/modularitycontainers/dhcp-server/
https://github.com/networkboot/docker-dhcpd
# Reference: 
https://codingcraftsman.wordpress.com/2020/04/08/so-you-wanna-build-a-test-mail-server/
https://hub.docker.com/r/antespi/docker-imap-devel



# Start server (antespi/docker-imap-devel):
docker-compose up mailserver



# Start client (using s-nail program to send mails):
Alpine (mailx)
docker-compose run mailclient bash

Ubuntu
docker-compose run mailclient2




# Server configuration files
docker run --rm antespi/docker-imap-devel cat /etc/dovecot/conf.d/10-auth.conf > ./server/10-auth.conf
docker run --rm antespi/docker-imap-devel cat /etc/dovecot/conf.d/10-ssl.conf > ./server/10-ssl.conf



## Maybe should try this version
https://hub.docker.com/r/juanluisbaptiste/postfix
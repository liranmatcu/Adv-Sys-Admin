Reference: 
https://codingcraftsman.wordpress.com/2020/04/08/so-you-wanna-build-a-test-mail-server/



Start server (antespi/docker-imap-devel):
docker-compose up mailserver



Start client (using s-nail program to send mails):
Alpine (mailx)
docker-compose run mailclient bash

Ubuntu
docker-compose run mailclient2




# Server configuration files
docker run --rm antespi/docker-imap-devel cat /etc/dovecot/conf.d/10-auth.conf > ./Server/10-auth.conf
docker run --rm antespi/docker-imap-devel cat /etc/dovecot/conf.d/10-ssl.conf > ./Server/10-ssl.conf
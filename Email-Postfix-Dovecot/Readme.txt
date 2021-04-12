Reference: 
https://codingcraftsman.wordpress.com/2020/04/08/so-you-wanna-build-a-test-mail-server/



Start server (antespi/docker-imap-devel):
docker-compose up mailserver



Start client (using s-nail program to send mails):
Alpine (mailx)
docker-compose run sendclient bash

Ubuntu
docker-compose run sendclient2
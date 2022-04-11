# Start web server http in debug mode
docker-compose up web-server-apache
# In daemon mode
docker-compose up web-server-apache  -d
# Log on to the web server container
docker exec -it web-apache sh    


# A demo web server with https
docker-compose up web-https-apache




# Start from command line w/o using composer file
docker build -t httpd-image . # Note that there is a dot in the end
docker run -it --name web -p 8080:80 -p 443:443 httpd-image



# All the conf files are copied from the original image, and placed under conf folder
# If you want, you can fetch the original configuration files for students to edit before doing the labs
docker run --rm httpd:2.4 cat /usr/local/apache2/conf/httpd.conf > conf/httpd.conf
docker run --rm httpd:2.4 cat /usr/local/apache2/conf/mime.types > conf/mime.types
docker run --rm httpd:2.4 cat /usr/local/apache2/conf/extra/httpd-ssl.conf > conf/extra/httpd-ssl.conf
docker run --rm httpd:2.4 cat /usr/local/apache2/conf/extra/httpd-vhosts.conf > conf/extra/httpd-vhosts.conf

# Start server in debug mode
docker-compose up web-nginx
# In daemon mode
docker-compose up  web-nginx -d  
# Log on to the web server container
docker exec -it web-nginx sh  
docker restart  web-nginx



# All the conf files are copied from the original image, and placed under conf folder
# If you want, you can fetch the original configuration files for students to edit before doing the labs
docker run --rm nginx cat /etc/nginx/conf.d/default.conf > conf.d/default.conf

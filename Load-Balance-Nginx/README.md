# Start server in debug mode

docker-compose up --build --remove-orphans


Try refreshing a few times and you will see the request is served by a different container as it switches between the upstream destinations. Now lets try killing one of the containers.

docker kill $ID

Replace $ID with one of the ID's from the browser.

https://www.zsiegel.com/2022/01/17/load-balancing-in-docker-with-nginx

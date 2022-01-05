# run hello-world container directly
Docker run hello-world

# Build and run
docker build -t nodejs-hello .
docker run nodejs-hello

# Docker-compose 
## from a nodejs container with a JavaScript file
docker-compose run nodejs-hello
docker-compose up nodejs-hello

docker network prune (in case)

## From a bash container
docker-compose run bash-hello echo "Hello World"
docker-compose run --rm bash-hello echo "Hello World"

docker-compose run --rm bash-hello 

# clean up
docker rm $(docker stop $(docker ps -aq))
docker-compose down --rmi all
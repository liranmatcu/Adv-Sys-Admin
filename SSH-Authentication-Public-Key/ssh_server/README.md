# Build the server container image
docker build -t ssh-server .

# Start a SSH server container
docker run --name server --hostname server --rm ssh-server
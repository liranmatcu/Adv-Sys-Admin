
docker build -t ssh-client .
docker run -it --name client --hostname client --rm -v "$PWD"/pub_keys:/pub_keys ssh-client bash
docker run -it --name client --hostname client --rm ssh-client bash

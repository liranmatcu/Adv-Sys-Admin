# NFS Server
https://hub.docker.com/r/itsthenetwork/nfs-server-alpine/
https://sysadmins.co.za/setup-a-nfs-server-with-docker/


# Start NFS server
docker-compose up nfs-server

docker exec -it nfs-server bash

The /etc/exports file contains these parameters unless modified by the environment variables listed above:

*(rw,fsid=0,async,no_subtree_check,no_auth_nlm,insecure,no_root_squash)


# NFS client
https://hub.docker.com/r/d3fk/nfs-client/
docker pull d3fk/nfs-client

docker-compose run nfs-client
docker run -itd --privileged=true --net=host -v vol:/mnt/nfs-1:shared -e SERVER= X.X.X.X -e SHARE=shared_path d3fk/nfs-client


New sources:
https://hub.docker.com/r/erichough/nfs-server/
https://github.com/ehough/docker-nfs-server

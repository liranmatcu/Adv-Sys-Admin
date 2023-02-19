
# NFS Server
https://hub.docker.com/r/erichough/nfs-server/
https://github.com/ehough/docker-nfs-server


# Start NFS server
docker-compose up server

docker exec -it nfs-server bash

## Configure exports files
The exports.txt <-> /etc/exports file contains these parameters: IP/Net(rw,fsid=0,async,no_subtree_check,no_auth_nlm,insecure,no_root_squash)

fsid is required


# Start NFS client
docker-compose run client bash
## Verify server setup
showmount -e 10.0.103.3  or showmount -e server
mount -t nfs -o nolock server:/nfsshare /tmp

## Other way of starting a client
docker network ls
docker run -it --network=nfs_lab alpine sh
apk add nfs-utils



# No docker-composer start and test
docker run                                            \
  -v $PWD/server/share:/nfsshare  \
  -v $PWD/server/exports.txt:/etc/exports:ro        \
  --cap-add SYS_ADMIN                                 \
  -p 2049:2049                                        \
  erichough/nfs-server

docker run -it alpine sh


# Other NFS server packages
https://hub.docker.com/r/itsthenetwork/nfs-server-alpine/
https://sysadmins.co.za/setup-a-nfs-server-with-docker/

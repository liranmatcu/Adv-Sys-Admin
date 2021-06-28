# NFS Server
https://hub.docker.com/r/itsthenetwork/nfs-server-alpine/

# Start NFS server
docker compose up NFS

docker exec -it NFS-server bash

The /etc/exports file contains these parameters unless modified by the environment variables listed above:

*(rw,fsid=0,async,no_subtree_check,no_auth_nlm,insecure,no_root_squash)

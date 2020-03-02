$containerName="oracle-db"
docker exec -it $containerName bash -c "source /home/oracle/.bashrc; sqlplus /nolog"
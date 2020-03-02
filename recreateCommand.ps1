# echo "---> Trying to save and delete current db container";;
# docker commit oracle-db oracle-db-$((get-date).ToString('"smh-"s/m/H"-dmy"/d/M/y').Replace('/', '-'));;
# docker rm -f oracle-db;;
echo "---> Make sure data directory exists";;
mkdir -p "$($pwd.Path)/data/OracleDB" 2>&1>$null
echo "---> Running new db container";;
docker run -d -it --name oracle-db -v "$($pwd.Path)/data/OracleDB:/ORCL" container-registry.oracle.com/database/enterprise:12.2.0.1;;
echo "---> Done. You can connect to database once container has reached 'healthy' state"
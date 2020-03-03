$containerName="oracle-db"
# --> If you want to auto-save current container to image, uncommment below
# echo "---> Trying to save and delete current db container";;
# docker commit oracle-db $containerName-$((get-date).ToString('"smh-"s/m/H"-dmy"/d/M/y').Replace('/', '-'));;

# --> Specify user/pwd for oracle account
docker login container-registry.oracle.com -u $USER -p $PWD

docker rm -f $containerName 2>&1>$null;; # delete old one if exists

echo "---> Running new db container";;
docker run -d -it --name $containerName -p 1521:1521 -p 5500:5500 -v "OracleData:/ORCL:rw" container-registry.oracle.com/database/enterprise:12.2.0.1;;
While ($(docker inspect -f "{{ .State.Health.Status }}" $containerName) -ne "healthy")
{
    Write-Host "Waiting for healthy container..." -ForegroundColor Yellow
    Start-Sleep -s 8
} # ~minute 
Write-Host "---> Container's ready to connect on localhost:1521 !" -ForegroundColor Green
echo "---> Now streaming logs from container:" 
Start-Sleep -s 3
docker logs -f $containerName;;

# If you have recent-enough WSL you can try changing owner of 'data' directory to 54321:54321 (create 'oracle' user -u 54321 -g 54321 first) and hopefully this allows to use mount volume also.
# echo "---> Make sure data directory exists";; # necessary for mount volume
# mkdir -p "$($pwd.Path)/data/OracleDB" 2>&1>$null
# docker run -d -it --name $containerName -p 1521:1521 -p 5500:5500 -v "$($pwd.Path)/data/OracleDB:/ORCL:rw" container-registry.oracle.com/database/enterprise:12.2.0.1;;
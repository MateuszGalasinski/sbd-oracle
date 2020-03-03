# Pre-requisites
- Oracle account or downloaded image 
- Docker / Docker Desktop

## How to get oracle image ? 
You need an account on Oracle to pull any oracle image. Dockerhub had been 'uncooperative' with access permissions even with accepted license, so you'll need to use https://container-registry.oracle.com. (follow the link to sign up).
Once you have an account, run
 `docker login container-registry.oracle.com`  
and specify credentials used to create account on oracle.

## How to get Docker ? 
Google will guide you :)

# Usage
Use recreate.ps1 to run container. Read before running in order to configure !

## IDE connection
Here's link to 'Oracle SQL Developer': <https://www.oracle.com/tools/downloads/sqldev-v192-downloads.html>  
And direct one to version: Win64 with JDK included:  
<https://www.oracle.com/tools/downloads/sqldev-v192-downloads.html#license-lightbox>  
Install and connect to db with:  
User: sys  
Pwd: Oradoc_db1  
Role: SYSDBA  
SID: ORCLCDB  
Host: localhost  
Port: 1521
## cli conneciton
*connect.ps1* runs cli on container
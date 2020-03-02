# Pre-requisites
- Oracle account 

## How to get oracle image ? 
You need an account on Oracle to pull any oracle image. Dockerhub had been 'uncooperative' with access permissions even with accepted license, so you'll need to use <container-registry.oracle.com> (follow the link to sign up).
Once you have an account, run
 `docker login container-registry.oracle.com`  
and specify credentials used to create account on oracle.

# Usage
Use recreate.ps1 to run container. Read before running !

## IDE connection
Here's link to 'Oracle SQL Developer': <https://www.oracle.com/tools/downloads/sqldev-v192-downloads.html>  
And direct one with Win64 with JDK included:  
<https://www.oracle.com/tools/downloads/sqldev-v192-downloads.html#license-lightbox>  
User: sys  
Pwd: Oradoc_db1  
Role: SYSDBA  
SID: ORCLCDB 

## cli conneciton
*connect.ps1* runs cli on container
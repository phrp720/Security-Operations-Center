
# Phase 3 - Incident Responce Tool

### This is the third phase of our S.O.C. installation.


In this phase we will setup our Incident Responce Tool with its prerequires.

The tools that we are going to install are: 

- TheHive
- Cassandra (The noSql database of TheHive)
- minIo (The storange and management tool of large files for TheHive)

<hr>



## Installation
The only thing that you have to do is to run the docker compose file inside the folder ./Phase_3/docker-compose.yml with the command :

    cd S.O.C/Installation/Phase_3
    sudo docker-compose -p "soc" up -d



and docker will do the rest for you.

<hr>

## After the installation

After the installation we must complete some steps to connect thehive with MISP Successfully.
Steps:

* Connect to theHive with the credentials below.

* Go to Platform Management>MISP

* Undo the "check kcertificate" checkbox
  
* Hit apply and save.


### Tools' Urls

- MinIO http://localhost:9002
- TheHive http://localhost:9000/index.html#!/login

### Credentials
TheHive
* Default Admin : admin@thehive.local
* Password : secret

MinIO
* Admin : minioadmin
* Password : minioadmin

<hr>

###### Inside this folder there is a .env file with some changable enviroment variables(such as the ELK admin Password , version etc).


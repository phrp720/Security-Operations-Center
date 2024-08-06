
# Phase 1 - SIEM


### This is the first phase of our S.O.C. installation.


#### In this phase we will setup/install the  SIEM(EKL STACK).

The tools that we are going to install are: 

- ElasticSearch
- Kibana
- Logstash

<hr>

## Installation
The only thing that you have to do is to run the docker compose file inside the folder ./Phase_1/docker-compose.yml with the command :

    cd S.O.C/Installation/Phase_1
    sudo docker-compose -p "soc" up -d


and docker will do the rest for you.
<hr>
!!!Warning,elasticsearch needs at least 4gb of ram.!!!
<hr>



### Urls of Tools

- Kibana http://localhost:5601
- ElasticSearch http://localhost:9200/
### Credentials
- Admin Username : elastic 
- Admin default Password : elastic


<hr>


###### Inside this folder there is a .env file with some changable enviroment variables(such as the ELK admin Password , ELK version etc).



# Phase 1 - SIEM


## Installation

The tools that we are going to install are:

- ElasticSearch
- Kibana
- Logstash

The only thing that you have to do is to run the docker compose file inside the folder ./Phase_1/docker-compose.yml with the command :

    cd S.O.C/Installation/Phase_1
    sudo docker-compose -p "soc" up -d


and docker will do the rest for you.

>[!Warning]
> Elasticsearch needs at least 4gb of ram!


### Urls of Tools

| Tool          | URL                        |
|---------------|----------------------------|
| Kibana        | http://localhost:5601      |
| ElasticSearch | http://localhost:9200/     |

### Credentials

| Role          | Username | Password |
|---------------|----------|----------|
| Admin         | elastic  | elastic  |



> [!TIP]
> Inside this folder there is a .env file with some changable enviroment variables(such as the ELK admin Password , ELK version etc).


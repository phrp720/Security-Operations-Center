
# Phase 2 - Cortex/Misp

## Installation

The tools that we are going to install are:

- Cortex
- MISP

Steps:

1) Create the custom Cortex image that contains python,pip and the analyzers/repsonders repo.
   Inside the folder `./Phase_2` run the command below:
    
        docker build -t custom-cortex:latest .
   

2) Then run the docker compose file inside the folder ./Phase_2/docker-compose.yml with the command :

        sudo docker-compose -p "soc" up -d

To use an analyzer we must fist enable its dependencies  from the custom-cortex image.
To do this:

1) Go to the Dockerfile


2) Find the analyzer that you want to use from https://github.com/TheHive-Project/Cortex-Analyzers/tree/master/analyzers and add the command  to install requirements

Example for MISP analyzer:

    RUN pip install -r /opt/Cortex-Analyzers/analyzers/MISP/requirements.txt


### Tools' Urls

| Tool   | URL                                      |
|--------|------------------------------------------|
| Cortex | http://localhost:9001/index.html#!/login |
| MISP   | https://0.0.0.0/users/login              |

### Credentials

| Service      | Username                    | Password |
|--------------|-----------------------------|----------|
| Cortex Admin | We will set it at the start | -        |
| MISP Admin   | admin@admin.test            | admin    |

> [!Warning]
>In production mode we need to change the hostname enviroment variable in the misp service to the hostname of the server.

> [!TIP]
> 
> Inside this folder there is a .env file with some changable enviroment variables(such as the ELK admin Password , ELK version etc).


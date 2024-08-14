
# Phase 7 - Filebeat


### This is the fifth phase of our S.O.C. installation.


#### In this phase we will setup Filebeat for our SIEM(EKL STACK).

The tools that we are going to install are: 

- Filebeat

<hr>

## Installation
 Run the docker compose file inside the folder ./Phase_7/docker-compose.yml with the command :

    cd S.O.C/Installation/Phase_7
    sudo docker-compose -p "soc" up -d



### Warning!!
At the first run filebeat will be setup and then will  automatically exit . 

When filebeat exits,go to the ./Phase_7/docker_compose.yml file and remove the "setup"
from the filebeat commands and rerun filebeat with the command:

    sudo docker-compose -p "soc" up -d

<hr>


> [!TIP]
>
>  Inside this folder there is a filebeat.yml file .That file is the configuration of Filebeat.

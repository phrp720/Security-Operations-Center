### To install the Security Operation Center in your Linux server,you must have install :

* curL
* docker
* docker-compose
* a firewall(iptables)

It is highly recommended to install Portainer.io for container management .


## Linux  Installation
run in terminal all the below commands in order specified.

- #### cURL

      sudo apt install curl

- #### Docker
    
  1)      sudo apt-get install docker.io
  
  2)      sudo groupadd docker
    
  3)     sudo usermod -aG docker $USER
    
  4)     newgrp docker

- #### Docker-compose

  1)      sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

  2)      sudo chmod +x /usr/local/bin/docker-compose


- #### Portainer

  1)     sudo docker volume create portainer_data

  2)     sudo docker run -d -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

  3)     Open in https://localhost:9443
 
- ### Firewall(iptables)

         sudo apt-get install  iptables-persistent


#### Because of the size and complexity of the project,I seperated the installation to 8 phases/steps .

* Phase 1 : ELK STACK
* Phase 2 : Cortex/MISP
* Phase 3 : TheHive
* Phase 4 : Shuffle
* Phase 5 : SURICATA
* Phase 6 : Osquery/FleetDM
* Phase 7 : Filebeat
* Phase 8 : ElastAlert


## Useful URLs after installation
- Portainer: http://localhost:9000 (if installed)
- Cortex: http://localhost:9001/index.html#!/login
- TheHive http://localhost:9000/index.html#!/login
- Kibana http://localhost:5601
- MISP https://0.0.0.0/users/login
- ElasticSearch http://localhost:9200/
- MinIO http://localhost:9002
- FleetDM https://fleet.com:8080

## Useful Passwords

- Cortex Admin :


    We will set it at the start 


-  MISP Admin:

    
    user: admin@admin.test

    pass: admin

- TheHive Default Admin

    
    user: admin@thehive.local

    pass: secret



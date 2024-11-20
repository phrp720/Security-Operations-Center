# Security Operation Center installation in Linux Server

<details>
<summary>Table of Contents</summary>

1. [Prerequisites](#prerequisites)
2. [Prerequisites Installation](#prerequisites-installation)
   - [cURL](#curl)
   - [Docker](#docker)
   - [Docker-compose](#docker-compose)
   - [Portainer](#portainer)
   - [Firewall(iptables)](#firewalliptables)
3. [Installation](#installation)
4. [Useful URLs after installation](#useful-urls-after-installation)
5. [Useful Passwords](#useful-passwords)

</details>

## Prerequisites
* curL
* docker
* docker-compose
* a firewall(iptables)

>[!Note]
>It is highly recommended to install [Portainer.io](https://www.portainer.io/) for container management .


## Prerequisites Installation

Run in terminal all the below commands in order specified.

- ### cURL

      sudo apt install curl

- ### Docker
    
  1)      sudo apt-get install docker.io
  
  2)      sudo groupadd docker
    
  3)     sudo usermod -aG docker $USER
    
  4)     newgrp docker

- ### Docker-compose

  1)      sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

  2)      sudo chmod +x /usr/local/bin/docker-compose


- ### Portainer

  1)     sudo docker volume create portainer_data

  2)     sudo docker run -d -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

  3)     Open in https://localhost:9443
 
- ### Firewall(iptables)

         sudo apt-get install  iptables-persistent

## Installation

Because of the size and complexity of the S.O.C. project.The installation is divided into 8 phases.3

| Phase                                | Component       | Description                                                                                                                                            |
|--------------------------------------|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Phase 1](./Phase_1/Installation.md) | ELK STACK       | The ELK Stack (Elasticsearch, Logstash, Kibana) is used for centralized logging, searching, and visualizing log data.                                  |
| [Phase 2](./Phase_2/Installation.md) | Cortex/MISP     | Cortex and MISP are used for threat intelligence and incident response. Cortex provides automated analysis, while MISP is a threat sharing platform.   |
| [Phase 3](./Phase_3/Installation.md) | TheHive         | TheHive is a security incident response platform that helps manage and respond to security incidents.                                                  |
| [Phase 4](./Phase_4/Installation.md) | Shuffle         | Shuffle is an automation platform that integrates with various security tools to automate workflows.                                                   |
| [Phase 5](./Phase_5/Installation.md) | SURICATA        | Suricata is a high-performance network IDS, IPS, and network security monitoring engine.                                                               |
| [Phase 6](./Phase_6/Installation.md) | Osquery/FleetDM | Osquery is an operating system instrumentation framework for monitoring endpoint security. FleetDM is used for managing and querying Osquery at scale. |
| [Phase 7](./Phase_7/Installation.md) | Filebeat        | Filebeat is a lightweight shipper for forwarding and centralizing log data to the ELK Stack.                                                           |
| [Phase 8](./Phase_8/Installation.md) | ElastAlert      | ElastAlert is a tool for alerting on anomalies, spikes, or other patterns of interest from data in Elasticsearch.                                      |


## Useful URLs after installation

| Service       | URL                                      |
|---------------|------------------------------------------|
| Portainer     | http://localhost:9000 (if installed)     |
| Cortex        | http://localhost:9001/index.html#!/login |
| TheHive       | http://localhost:9000/index.html#!/login |
| Kibana        | http://localhost:5601                    |
| MISP          | https://0.0.0.0/users/login              |
| ElasticSearch | http://localhost:9200/                   |
| MinIO         | http://localhost:9002                    |
| FleetDM       | https://fleet.com:8080                   |

## Useful Passwords

| Service               | Username                    | Password |
|-----------------------|-----------------------------|----------|
| Cortex Admin          | We will set it at the start | -        |
| MISP Admin            | admin@admin.test            | admin    |
| TheHive Default Admin | admin@thehive.local         | secret   |



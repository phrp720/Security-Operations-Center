# Linux  Installation

## To configure and setup a Linux endpoint,you must have install :

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


- ### Firewall(iptables)

      sudo apt-get install  iptables-persistent

- ###  Suricata

  You can find the suricata installation process [here](./suricata/Installation.md).    

- ###  Filebeat

  You can find the filebeat installation process [here](./filebeat/Installation.md).

- ###  Fleetd agent

Go to the server that SOC is installed  and generate a fleetd agent for windows with the following command:

    sudo fleetctl package --type=deb --enable-scripts --fleet-desktop --fleet-url=https://fleet.com:8080 --enroll-secret={your_enroll_secrect} --fleet-certificate=server.cert

Before you install the  .deb file to the endpoint be sure to add the following line to the hosts of your OS

    {local_IP_of_fleetServer} fleet.com

Path of hosts for linux : `/etc/hosts `




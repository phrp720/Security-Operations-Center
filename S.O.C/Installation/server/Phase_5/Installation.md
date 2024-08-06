
## Phase 5 - Intrusion detection and intrusion prevention

### This is the fifth phase of our S.O.C. installation.


In this phase we will setup our Intrusion detection and intrusion prevention (IDPS) tool.

The tool that we are going to install is: 

- Suricata

<hr>

### Installation

Firstly go to the .env file of the ./Phase_5/ids folder and fill the INTERFACE field with your desired Interface and the docker interface of soc_net to protect both vm ip and containers' ip.

Then the only thing that you have to do is to run the docker compose files inside the folder ./Phase_5/ips && ./Phase_5/ids with the command :

For IDS mode

    cd S.O.C/Installation/Phase_5/ids
    sudo docker-compose -p "soc" up -d

For IPS mode

    cd S.O.C/Installation/Phase_5/ips
    sudo docker-compose  up -d


and docker will do the rest for you.

<hr>

### How to add rules
You can write custom rules in the custom.rules file located in ./Phase_5/ids/rules/custom.rules and ./Phase_5/ips/rules/custom.rules

<hr>

### How to see the logs/alerts
The logs alerts are saved at the container(and our local machine for testing purposes) in the folder /var/log/suricata . 


<hr>

Usefull command for interface
                
    ip -brief address show


To see the default interface

    ip -p -j route show default

###### Inside this folder there is a .env file with some changable enviroment variables(such the interface etc).
###### suricata.yml files are the configuration for each suricata instance.


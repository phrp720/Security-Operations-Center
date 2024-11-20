
# Suricata Linux Installation

<details>
<summary>Table of Contents</summary>


1. [Installation](#installation)
2. [How to add rules](#how-to-add-rules)
3. [How to see the logs/alerts](#how-to-see-the-logsalerts)

</details>

## Installation

Firstly go to the .env file of the `./Phase_5/ids` folder and fill the INTERFACE field with your desired Interface and the docker interface of soc_net to protect both vm ip and containers' ip.


Installation command for IDS mode:

    cd ./S.O.C/Installation/endpoints/linux/suricata/ids/docker-compose.yml
    sudo docker-compose -p "endpoint" up -d



and docker will do the rest for you.

<hr>

## How to add rules
You can write custom rules in the custom.rules file located in  ./S.O.C/Installation/endpoints/linux/suricata/ids/rules/custom.rules

<hr>

## How to see the logs/alerts
The logs alerts are saved at the container(and our local machine for testing purposes) in the folder /var/log/suricata . 


<hr>

> [!Tip]
> - Usefull command for interface
>                
>       ip -brief address show
>
>
> - To see the default interface
>
>       ip -p -j route show default

> [!Note]
> Inside this folder there is a .env file with some changable enviroment variables(such the interface etc).
> `suricata.yml` files are the configuration for each suricata instance.


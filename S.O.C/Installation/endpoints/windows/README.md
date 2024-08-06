### To configure and setup a windows endpoint,you must have install :

- Suricata
- Filebeat
- Fleetd agent


## Windows Installation

- #### Suricata

        Follow the installation instructions in the README.md file in the folder ./windows/suricata


- #### Filebeat

        Follow the installation instructions in the README.md file in the folder ./windows/filebeat



- #### Fleetd agent

Go to the server that SOC is installed  and generate a fleetd agent for windows with the following command:

        sudo fleetctl package --type=msi --enable-scripts --fleet-desktop --fleet-url=https://fleet.com:8080 --enroll-secret={your_enroll_secrect} --fleet-certificate=server.cert

Before you run the  .msi excecutable to the endpoint be sure to add the following line to the hosts of your OS

        {local_IP_of_fleetServer} fleet.com

Path of hosts for Windows : c:\Windows\System32\Drivers\etc\hosts



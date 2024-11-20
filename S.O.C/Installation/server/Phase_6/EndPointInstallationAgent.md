# Fleetd agent Generator

Please run then inside the ./fleet folder because we need the server.cert file for develop environment
for windows:

        sudo fleetctl package --type=msi --enable-scripts --fleet-desktop --fleet-url=https://fleet.com:8080 --enroll-secret={your_enroll_secrect} --fleet-certificate=server.cert

for linux :

        sudo fleetctl package --type=deb --enable-scripts --fleet-desktop --fleet-url=https://fleet.com:8080 --enroll-secret={your_enroll_secrect} --fleet-certificate=server.cert


Before you run the  excecutable to the endpoint be sure to add the following line to the hosts of your OS 

        {local_IP_of_fleetServer} fleet.com


Path of hosts for linux : `/etc/hosts` 

Path of hosts for Windows : `C:\Windows\System32\Drivers\etc\hosts`

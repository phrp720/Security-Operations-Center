# Phase 6 - Osquery/FleetDM


### This is the sixth phase of our S.O.C. installation.


In this phase we will setup our EDR Tool with its prerequires.

The tools that we are going to install are: 

- FleetDM
- Redis
- Osquery

### Installation of npm and fleetctl

(mandatory only if we want to install the dashboards for kibana later)

####  npm

    sudo apt install npm

####  fleetctl

    sudo npm install -g fleetctl


<hr>
** Currently you can bypass the valid certificate creation and go directly to step 5 **

Steps for a valid certificate for fleet:

1. Create a new certificate request

        openssl ecparam -name prime256v1 \
        -genkey -noout -out fleet/server.pem

2. Create a public key:

        openssl ec -in fleet/server.pem \
        -pubout -out fleet/server.pem.pub

3. Generate a self-signed certificate for fleet.com

        openssl req -new -x509 \
        -key fleet/server.pem \
        -out fleet/server.cert -days 365 \
        -addext "subjectAltName = DNS:fleet.com"
4. change the user ID (UID) and group ID (GID) of the certificate files to be owned by the appropriate UID and GID within the container.

         sudo chown 100:101 fleet/


5.  Go to /etc/hosts(Linux) or C:\Windows\System32\Drivers\etc\hosts(Windows) and add the following line:

        127.0.0.1 fleet.com


### Installation

Then the only thing that you have to do is to run the docker compose files inside the folder ./Phase_6 with the command :

    cd S.O.C/Installation/Phase_6
    sudo docker-compose -p "soc" up -d

    
fleet flags to create a excecutable fleetd locally:

We need the created certificate to work.(This does not need in production).
Go to the folder ./Phase_6/fleet and run the linux command below.
Linux Example:
            
    sudo fleetctl package --type=deb --enable-scripts --fleet-desktop --fleet-url=https://fleet.com:8080 --enroll-secret={the_enroll_secret_key} --fleet-certificate=server.cert

<hr>

### Dashboard Installation

#### Steps for kibana and elasticsearch

- Add .cert to /etc/ssl/certs to be trusted by the system

        sudo cp ./fleet/server.cert /etc/ssl/certs

- Add the index Pattern via curL

      curl -X PUT "localhost:9200/_template/osquery-result?pretty" -H 'Content-Type: application/json' -u elastic:elastic -d'
      {
         "index_patterns": ["osquery*"],
         "mappings": {
             "properties": {
                  "columns": {
                     "properties": {
                        "average_system_time": {
                            "type": "float"
                        },
                        "average_memory": {
                            "type": "float"
                        }
                     }
                  }
            }
         }
      }'
- connect to fleetctl and add the configuration file

      sudo fleetctl config set --address https://fleet.com:8080

       sudo fleetctl login

- Add the configuration file

        sudo fleetctl apply -f  ./elk/conf.yml 
- Add dashboard to kibana

  Stack Management -> Saved Objects -> Import -> Select the file **dashboard.ndjson** from ./elk folder

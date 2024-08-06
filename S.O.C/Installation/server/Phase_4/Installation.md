
# Phase 4 - Shuffle

### This is the 4th phase of our S.O.C. installation.

#### In this phase we will setup our SOAR .

The tool that we are going to install is:

- Shuffle

<hr>

## Installation
The only thing that you have to do is to run the docker compose file inside the folder ./Phase_4/docker-compose.yml with the command :

    cd S.O.C/Installation/Phase_4
    sudo docker-compose -p "soc" up -d




and docker will do the rest for you.

After the installation,import to shuffle the workflows that are located to ./Phase_4/workflows .

When the import of workflows is done.Fill the mandatory fields of thehive credentials and email credentials to enable the workflows.



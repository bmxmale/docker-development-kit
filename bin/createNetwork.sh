#!/bin/bash

# Variables

networkName='DOCKER_network'
networkSubnet='172.10.0.0/16'
networkGateway='172.10.0.1'

checkNetworkName() {
   echo `docker network ls | grep ${networkName} | wc -l`
}

createDockerNetwork() {
    if [ 0 != $(checkNetworkName) ]
    then
        echo "Network '${networkName}' already exist. Ignoring"
    else
        echo "Creating network: ${networkName}"
        docker network create --attachable --driver bridge --subnet ${networkSubnet} --gateway ${networkGateway} ${networkName}
    fi
}

createDockerNetwork

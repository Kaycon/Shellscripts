#!/bin/bash

#Update Package Index and Upgrade Packages
apt-get update -y

#Prepare Docker
apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

#Install Docker
apt-get update -y
apt-get install docker-ce -y

#Check if Docker works
docker run hello-world

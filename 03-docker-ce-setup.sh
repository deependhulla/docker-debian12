#!/bin/bash

apt-get -y remove docker docker-engine docker.io containerd runc
apt-get -y install ca-certificates curl gnupg
mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

chmod a+r /etc/apt/keyrings/docker.gpg
echo "deb [arch="amd64" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian bullseye stable"  >  /etc/apt/sources.list.d/docker.list

apt-get update

apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin




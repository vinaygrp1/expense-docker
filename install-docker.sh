#!/bin/bash

R="\e[31m"
N="\e[0m"
#check whether root user or not
sudo su -
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl start docker
systemctl status docker
systemctl enable docker
echo -e "$R Logout and login again $N"



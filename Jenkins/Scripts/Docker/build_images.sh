#!/bin/bash

#Install dependencies required to build
sudo apt install openjdk-8-jre maven default-jre

#Go into our Docker directory
cd Docker

#Prune our system by force
docker system prune -f

#Remove any previous repos
sudo rm -r spring-petclinic-angular
sudo rm -r spirng petclinic-rest

#Clone our REST repo (contains our Dockerfile already)
git clone https://github.com/Team-CodeVid/spring-petclinic-rest

#Clone our Angular repo
git clone https://github.com/Team-CodeVid/spring-petclinic-angular

#Run docker-compose to build both our images
docker-compose build --no-cache

#Log in to our dockerhub account
sudo docker login docker.io -u #Our_Username# -p #Our_Password#

# Push the images to docker
sudo docker-compose push

# Remove the app git repos to save space.
sudo rm -r spring-petclinic-rest
sudo rm -r spring-petclinic-angular




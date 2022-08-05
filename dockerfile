FROM jenkins/jenkins
# FROM docker:latest
# FROM ubuntu:20.04

USER root

# Mise à jour des programme du container
RUN apt-get -y update
RUN apt-get -y upgrade

ARG DEBIAN_FRONTEND=noninteractive 

RUN apt-get install -y docker.io

# CMD ["sleep", "3600"]
#########################################################################
#RNA-seq Tools
#Dockerfile to use SUPPA with python3
#Ubuntu 14.04
##########################################################################
#Build the image based on Ubuntu
FROM ubuntu:14.04

#Maintainer and author
MAINTAINER Magdalena Arnal <marnal@imim.es>

#Install/update wget, unzip, python in ubuntu
RUN apt-get update && apt-get install --yes wget unzip python

#Instalem multiqc
pip install multiqc

#Set wokingDir in /
WORKDIR /

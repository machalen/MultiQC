#########################################################################
#RNA-seq Tools
#Dockerfile to use SUPPA with python3
#Ubuntu 14.04
##########################################################################
#Build the image based on Ubuntu
FROM python:2.7-slim
#Maintainer and author
MAINTAINER Magdalena Arnal <marnal@imim.es>

#Instalem multiqc
pip install multiqc
#Set wokingDir in /
WORKDIR /

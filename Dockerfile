#########################################################################
#RNA-seq Tools
#Dockerfile to use SUPPA with python3
#Ubuntu 14.04
##########################################################################

# Set the base image to Ubuntu
FROM ubuntu:14.04

# File Author / Maintainer
MAINTAINER Magdalena Arnal <marnal@imim.es>

# Install OpenJDK 7 JRE
RUN apt-get update && apt-get install --yes openjdk-7-jre perl unzip python

# Download FastQC
ADD http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip /tmp/

# Install FastQC
RUN cd /usr/local && \
  unzip /tmp/fastqc_*.zip && \
  chmod 755 /usr/local/FastQC/fastqc && \
  ln -s /usr/local/FastQC/fastqc /usr/local/bin/fastqc && \
  rm -rf /tmp/fastqc_*.zip

#Install multiQC
RUN pip install multiqc

#Set wokingDir in /
WORKDIR /

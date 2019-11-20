FROM ubuntu:16.04
MAINTAINER kusmirekwiktor@gmail.com

RUN apt-get update && \
 apt-get upgrade -y && \
 apt-get install -y wget gcc python git build-essential

#RUN conda install blast=2.2.31

RUN apt-get install -y ncbi-blast+

ENV PATH="/blast/:${PATH}"

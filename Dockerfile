# Ubuntu 20.04 with Java 8 installed.
# Build image with:  docker build -t rbonifacio/mcsl-java8:v1 .

FROM ubuntu:20.04
MAINTAINER Rodrigo Bonifacio, https://github.com/rbonifacio
RUN apt-get update               && \
    apt install -y openjdk-8-jdk && \
    apt-get install -y git       && \
    apt-get install wget         && \
    apt-get clean                && \
    mkdir /mcsl

WORKDIR /mcsl

RUN git clone https://github.com/CROSSINGTUD/MetaCrySL.git && \
    cd MetaCrySL                                           && \
    git fetch --all                                        && \
    git checkout -b docker                                 && \
    git pull origin docker                                 && \ 
    cd ..                                                  && \
    wget https://update.rascal-mpl.org/console/rascal-shell-stable.jar && \
    echo "alias rascal-shell='java -Xmx1G -Xss32m -jar /mcsl/rascal-shell-stable.jar'" >> ~/.bashrc && bash



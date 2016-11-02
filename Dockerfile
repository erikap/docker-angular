FROM ubuntu:16.04
MAINTAINER Erika Pauwels <erika.pauwels@gmail.com>

# Install nodejs as per http://askubuntu.com/questions/672994/how-to-install-nodejs-4-on-ubuntu-15-04-64-bit-edition
RUN apt-get -y update; apt-get -y install wget python build-essential git \
    && wget -qO- https://deb.nodesource.com/setup_4.x > node_setup.sh \
    && bash node_setup.sh \
    && apt-get -y install nodejs

# Install bower / gulp / yeoman / angular1 generators
RUN npm install -g bower gulpjs/gulp-cli yo typings generator-fountain-webapp generator-fountain-angular1

# Install ruby and compass
RUN apt-get install -y ruby2.3 ruby2.3-dev \
    && gem install --no-rdoc --no-ri compass

# Add a yeoman user because yeoman doesn't like being root
RUN adduser --disabled-password --gecos "" yeoman;
USER yeoman

WORKDIR /app

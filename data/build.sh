#!/bin/bash
 
sudo apt-get update
# sudo apt-get install locales && \
# sudo locale-gen
# sudo apt-get install curl 

export HOME=/home
export PWD=/home
# export DEBIAN_FRONTEND=noninteractive



# apache2 server ==> port 80 ==> www-data 
# /etc/init.d/ ==> is like where all the services are located 
sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install php
sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install apache2 

sudo cp -r $HOME/data/html /var/www/ && \
sudo cp $HOME/data/configurations/apache2/apache2.conf /etc/apache2 && \
sudo cp $HOME/data/configurations/apache2/ports.conf /etc/apache2 && \
sudo cp $HOME/data/configurations/apache2/000-default.conf /etc/apache2/sites-enabled

sudo service apache2 start


















# /bin/bash: warning: setlocale: LC_ALL: cannot change locale (en_US.UTF-8)
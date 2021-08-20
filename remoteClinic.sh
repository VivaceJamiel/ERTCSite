#!/bin/bash

service apache2 start
service mysql start

#Database Username: root
#Database password: user
mysql -u root -puser -e "create database remoteclinic"
mysql -u root -puser -D remoteclinic -e "source /var/www/html/RemoteClinic-master/remoteclinic.sql"

# sed -i 's//user/' /var/www/html/RemoteClinic-master/pre-includes/db.php

mkdir -p docker/php/conf.d
touch docker/php/conf.d/xdebug.ini
touch docker/php/conf.d/error_reporting.ini

sleep 9999
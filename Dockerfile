FROM php:5.5-apache
RUN apt-get update && echo mysql-server-5.5 mysql-server/root_password password user | debconf-set-selections && echo mysql-server-5.5 mysql-server/root_password_again password user | debconf-set-selections && apt-get install -y mysql-server && apt-get install mysql-client 
#RUN apt-get install -y php5 
#RUN apt-get install -y php5-mysql && apt-get install -y php5-mysqlnd
RUN docker-php-ext-install mysql mysqli pdo pdo_mysql
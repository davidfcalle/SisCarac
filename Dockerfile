FROM php:5-apache
MAINTAINER David Calle "davidfcalle@gmail.com"

#cliente de mysql
RUN apt-get update && \
    apt-get install -y mysql-client libmysqlclient-dev \ 
    && docker-php-ext-install mysqli

WORKDIR /var/www/html/reports

#instalación de composer para gestionar las dependencias de php
#RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

#instalar php reports con composer para los reportes
#RUN composer install && \
#    cp config/config.php.sample config/config.php
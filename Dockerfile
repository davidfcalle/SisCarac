FROM php:5-apache
MAINTAINER David Calle "davidfcalle@gmail.com"

#cliente de mysql
RUN apt-get update && \
    apt-get install -y mysql-client libmysqlclient-dev \ 
    && docker-php-ext-install mysqli

#dependencias para simplificar el Dockerfile
RUN apt-get install -y git unzip

WORKDIR /php-reports
#instalación de composer para gestionar las dependencias de php
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

#instalación de php reports
RUN git clone https://github.com/jdorn/php-reports.git

#instalación de dependencias de PHP reports
WORKDIR /php-reports/php-reports
RUN composer install && cp config/config.php.sample config/config.php  

#configuración del servidor apache
ADD apache2.conf /etc/apache2/apache2.conf

#Se agrega la aplicación al contenedor
ADD html /var/www/html/

RUN cp -r /php-reports/php-reports /var/www/html/php-reports
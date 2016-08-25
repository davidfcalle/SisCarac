FROM php:5-apache
MAINTAINER David Calle "davidfcalle@gmail.com"

#cliente de mysql
RUN apt-get update && \
    apt-get install -y mysql-client libmysqlclient-dev php5-gd php5-mysql  php-pear php5-dev libmysqlclient15-dev && \
    pecl install pdo && pecl install pdo_mysql \ 
    && docker-php-ext-install mysql mysqli pdo pdo_mysql

#dependencias para simplificar el uso del contenedor en el futuro
RUN apt-get install -y git unzip wget

#configuración del servidor apache, se hace explícito para que el desarrollador lo tenga en cuenta y lo pueda cambiar
ADD apache2.conf /etc/apache2/apache2.conf

#Se agrega la aplicación al contenedor, reportico 4.4 viene como una carpeta dentro de html para evitar problemas de dependencias 
ADD html /var/www/html/
FROM php:7.1

RUN apt-get update -y && apt-get install -y libmcrypt-dev openssl git wget zip unzip gnupg mysql-client
RUN docker-php-ext-install pdo mcrypt pdo_mysql
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer global require hirak/prestissimo

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash
RUN apt-get install nodejs -y
RUN npm install -g yarn
FROM php:8.3-fpm

WORKDIR /var/www/src

RUN docker-php-ext-install pdo pdo_mysql
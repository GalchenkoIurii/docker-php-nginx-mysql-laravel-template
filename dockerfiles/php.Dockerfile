FROM php:8.3-fpm

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
libzip-dev \
unzip \
&& docker-php-ext-install zip pdo pdo_mysql \
&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
&& chown -R www-data:www-data /var/www
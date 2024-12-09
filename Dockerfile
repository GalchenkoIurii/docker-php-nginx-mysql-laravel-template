FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
libpng-dev \
libjpeg-dev \
libfreetype6-dev \
libonig-dev \
libxml2-dev \
libzip-dev \
zip \
unzip \
curl \
&& docker-php-ext-install zip pdo pdo_mysql mbstring exif pcntl bcmath gd

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/src
COPY . /var/www

RUN composer install

RUN chown -R www-data:www-data /var/www/src \
    && chmod -R 775 /var/www/src/storage \
    && chmod -R 775 /var/www/src/bootstrap/cache

EXPOSE 9000
CMD ["php-fpm"]
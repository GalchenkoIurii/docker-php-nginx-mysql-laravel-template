# Docker-PHP-Nginx-MySQL-Laravel template
PHP, Nginx, MySQL, Laravel starter kit for Docker

## Components
* PHP 8.3-fpm
* Nginx
* MySQL 8.4.0
* Laravel 11.*

## Requirements
* Docker v.
* Docker Compose v.

## Setting up on DEV environment
* Clone this repository from GitHub.
* Go to [project-name directory]/src directory and run command:
```bash
composer install
```
* Run command:
```bash
docker exec -it php sh
```
to enter the sh-console php's container.
* Run commands:
```bash
php artisan key:generate
php artisan migrate
```

## Setting up on PROD environment
* Clone this repository from GitHub.

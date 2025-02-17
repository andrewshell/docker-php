FROM php:8.2-fpm-alpine

# Install system dependencies
RUN apk update && apk add git

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www

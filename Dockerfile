FROM php:8.3-fpm

# Install system dependencies
RUN apt-get clean && apt-get update && apt-get install -y \
    libpq-dev \
    libicu-dev \
    # nano \ optional
    # supervisor \  optional
    # cron \ optional

# for all extensions https://gist.github.com/chronon/95911d21928cff786e306c23e7d1d3f3
RUN docker-php-ext-install intl
RUN docker-php-ext-install pdo # For mysql change to mysqli or your db extension
RUN docker-php-ext-install pdo_pgsql # For mysql change to pdo_mysql or your db extension
RUN docker-php-ext-install mbsting
RUN docker-php-ext-install xml
RUN docker-php-ext-install sockets
RUN docker-php-ext-install pgsql && docker-php-ext-enable pgsql
RUN apt-get install -y \
    libzip-dev \
    zip \
    && docker-php-ext-install zip

RUN pecl install mongodb && docker-php-ext-enable mongodb
# RUN apt-get clean && rm -rf /var/lib/apt/lists/* optional


RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer

WORKDIR /var/www/html
COPY . /var/www/html

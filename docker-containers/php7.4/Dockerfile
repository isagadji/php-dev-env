FROM php:7.4-fpm

#RUN apt-get update && apt-get -y upgrade
RUN apt-get update

RUN apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libmemcached-dev \
        zlib1g-dev \
        libmcrypt-dev \
        libxml2-dev \
        libzip-dev \
        libonig-dev \
        graphviz \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

RUN pecl install redis \
    && pecl install xdebug \
    && pecl install memcached \
    && pecl install mongodb

RUN docker-php-ext-enable xdebug memcached mongodb redis

RUN docker-php-ext-install mbstring \
    && docker-php-ext-install exif \
    && docker-php-ext-install opcache \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install zip \
    && docker-php-source delete

RUN cd /tmp && \
    php -r "copy('https://getcomposer.org/composer.phar', 'composer.phar');" && \
    mv composer.phar /usr/local/bin/composer && \
    chmod +x /usr/local/bin/composer

COPY php.d/* /usr/local/etc/php/conf.d/
COPY php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www/html

CMD ["php-fpm", "-F"]

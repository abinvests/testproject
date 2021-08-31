FROM php:7.3.2-apache-stretch

LABEL maintainer="Med oussama belabed " \
      version="1.0"

COPY --chown=www-data:www-data . /srv/app

WORKDIR /srv/app

RUN docker-php-ext-install mbstring pdo pdo_mysql \
    && a2enmod rewrite negotiation \
    && docker-php-ext-install opcache
RUN chmod -R 777 *
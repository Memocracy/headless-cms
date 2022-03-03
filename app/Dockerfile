FROM php:8.0-apache
RUN apt update && apt install -y zlib1g-dev libpng-dev libjpeg62-turbo-dev && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN docker-php-ext-configure gd --with-jpeg=/usr/include/ &&\
    docker-php-ext-install gd

RUN apt-get update && apt-get upgrade -y
RUN a2enmod rewrite

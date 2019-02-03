FROM php:7.2-fpm-alpine

RUN apk add -U \
  freetype-dev \
  icu-dev \
  libjpeg-turbo-dev \
  libmcrypt-dev \
  libpng-dev \
  libxslt-dev

RUN docker-php-ext-configure \
  gd --with-freetype-dir=/usr/include --with-jpeg-dir=/usr/include

RUN docker-php-ext-install \
  dom \
  gd \
  intl \
  mbstring \
  pdo_mysql \
  xsl \
  zip \
  soap \
  bcmath

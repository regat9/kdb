FROM php:8.2.5-fpm-alpine

ARG TZ='UTC'
ARG PROJECT_DIR_ARG='/var/www/'
ARG USER_ID
ARG GROUP_ID
ENV PROJECT_DIR=$PROJECT_DIR_ARG

RUN apk add --no-cache $PHPIZE_DEPS

# https://wiki.alpinelinux.org/wiki/Setting_the_timezone
RUN echo "${TZ}" && apk --update add tzdata && \
    cp /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    apk del tzdata

RUN apk add --no-cache bash mysql-client msmtp perl wget procps shadow libzip libpng libjpeg-turbo libwebp freetype icu \
    libintl patch acl git gettext-dev libcurl libxml2-dev openssh-client pcre-dev su-exec build-base oniguruma-dev \
    gmp-dev postgresql-dev gettext gettext-dev \
    imagemagick \
    imagemagick-dev \
    && pecl install imagick \
    && docker-php-ext-enable imagick

RUN apk add --update --no-cache --virtual build-essentials \
    icu-dev icu-libs zlib-dev g++ make automake autoconf libzip-dev \
    htop supervisor nodejs npm \
    libpng-dev libwebp-dev libjpeg-turbo-dev freetype-dev && \
    docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp && \
    docker-php-ext-configure gettext && \
    docker-php-ext-configure opcache --enable-opcache && \
    docker-php-ext-configure pcntl --enable-pcntl && \
    docker-php-ext-configure soap && \
    docker-php-ext-configure intl && \
    docker-php-ext-install intl && \
    docker-php-ext-install gettext && \
    docker-php-ext-install pcntl && \
    docker-php-ext-install gd && \
    docker-php-ext-install opcache && \
    docker-php-ext-install soap && \
    docker-php-ext-install xml && \
    docker-php-ext-install gmp && \
    docker-php-ext-install pdo_pgsql && \
    docker-php-ext-install mysqli && \
    docker-php-ext-install pdo_mysql && \
    docker-php-ext-install opcache && \
    docker-php-ext-install exif && \
    docker-php-ext-install zip && \
    apk del build-essentials && rm -rf /usr/src/php*

RUN pecl install -o -f redis mongodb \
    &&  rm -rf /tmp/pear \
    &&  docker-php-ext-enable redis \
    &&  docker-php-ext-enable mongodb

# Clean
RUN rm -rf /var/cache/apk/* && docker-php-source delete

USER root

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN /usr/local/bin/composer self-update

RUN mkdir -p $PROJECT_DIR
COPY ./sites/kicksdb $PROJECT_DIR
RUN chown -R www-data:www-data $PROJECT_DIR

RUN usermod -u ${USER_ID} www-data && groupmod -g ${GROUP_ID} www-data

WORKDIR $PROJECT_DIR
VOLUME $PROJECT_DIR

USER "${USER_ID}:${GROUP_ID}"

CMD ["php-fpm"]

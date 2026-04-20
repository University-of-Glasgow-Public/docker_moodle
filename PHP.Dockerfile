FROM php:8.3-fpm

RUN apt-get update
RUN apt-get install -y libldap-dev libzip-dev libicu-dev libgd-dev libjpeg62-turbo-dev libpng-dev libxml2-dev libxslt-dev libyaml-dev locales

RUN docker-php-ext-install mysqli
RUN docker-php-ext-configure gd --with-jpeg
RUN docker-php-ext-install gd
RUN docker-php-ext-install ldap
RUN docker-php-ext-install zip
RUN docker-php-ext-install intl
RUN docker-php-ext-install soap
RUN docker-php-ext-install xsl
RUN docker-php-ext-install exif

RUN pecl install redis
RUN pecl install xdebug
RUN pecl install yaml
RUN docker-php-ext-enable redis xdebug
RUN localedef -c -i en_AU -f UTF-8 en_AU.UTF-8
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

COPY ./moodlephp.ini "$PHP_INI_DIR/conf.d/moodlephp.ini"
COPY ./moodlephpfpm.conf "/usr/local/etc/php-fpm.d"


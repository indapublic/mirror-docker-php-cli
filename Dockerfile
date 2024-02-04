ARG PHP_VERSION

FROM php:$PHP_VERSION-cli-alpine

MAINTAINER indapublic <mail@indapublic.com>

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions amqp intl mysqli opcache pcntl pdo pdo_mysql phar redis xsl zip

RUN apk add shadow && usermod -u 1000 www-data

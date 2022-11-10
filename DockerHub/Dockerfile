FROM php:7.4.33-apache-bullseye

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini" && sed -i "s/^\;extension=mysqli/extension=mysqli/g" $PHP_INI_DIR/php.ini && docker-php-ext-install mysqli

COPY ./index.php /var/www/html/index.php

FROM php:7.0.4-apache

# Install PHP Extension
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install mysqli

# Set PhpMyAdmin
WORKDIR /tmp
RUN curl -O https://files.phpmyadmin.net/phpMyAdmin/4.6.0/phpMyAdmin-4.6.0-english.tar.gz \
            && tar -xzf phpMyAdmin-4.6.0-english.tar.gz -C . \
            && rm -rf phpMyAdmin-4.6.0-english.tar.gz /var/www/html \
            && mv phpMyAdmin-4.6.0-english /var/www/html
COPY config.inc.php /var/www/html/
COPY .htaccess /var/www/html/.htaccess

# Enable mod-rewrite
RUN a2enmod rewrite

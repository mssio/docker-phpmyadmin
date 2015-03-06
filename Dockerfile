FROM php:5.6.6-apache

# Install PHP Extension
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install mysqli

# Copy phpmyadmin
COPY 4.3.10/ /var/www/html/
COPY config.inc.php /var/www/html/
COPY .htaccess /var/www/html/.htaccess

# Enable mod-rewrite
RUN a2enmod rewrite

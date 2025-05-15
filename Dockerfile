FROM php:8.2-apache

# Copiar los archivos de la aplicación web
COPY ./app/ /var/www/html/



# Instalar extensiones necesarias
RUN docker-php-ext-install mysqli

# Configurar permisos
RUN chown -R www-data:www-data /var/www/html

# Exponer el puerto 80
EXPOSE 80

#!/bin/sh
php /var/www/html/artisan config:cache
php /var/www/html/artisan route:cache
php /var/www/html/artisan view:cache
php /var/www/html/artisan storage:link
php /var/www/html/artisan migrate --force
supervisord -c /var/www/html/docker/supervisord.conf
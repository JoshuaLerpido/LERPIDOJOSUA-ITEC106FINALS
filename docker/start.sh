#!/bin/sh
php /var/www/html/artisan config:cache
php /var/www/html/artisan route:cache
php /var/www/html/artisan view:cache
php /var/www/html/artisan storage:link
php /var/www/html/artisan migrate --force
php-fpm -D -R --fpm-config /dev/null -d listen=/var/run/php-fpm.sock
sleep 2
nginx -g "daemon off;"
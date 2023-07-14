#!/bin/bash

if [ ! -f /var/www/html/wp-config.php ]; then
	service php7.3-fpm start
	chmod 777 /var/www/html/
	chown -R www-data:www-data /var/www/html/
	wp core download --allow-root --path=/var/www/html --allow-root
	# wp config create --allow-root --dbname=${SQL_DATABASE} --dbuser=${SQL_USER} --dbpass=${SQL_PASSWORD} --dbhost="mariadb" --path=/var/www/html --allow-root --skip-check
	# wp core install --allow-root --path=/var/www/html
	# wp core install --allow-root --url=${DOMAIN_NAME} --title='inception' --admin_user=${ADMIN_NAME} --admin_password=${ADMIN_PASS} --admin_email=$ADMIN_EMAIL --allow-root --path=/var/www/html
	# wp user create --allow-root ${WP_USER_NAME $WP_EMAIL} --user_pass=${WP_USER_PASS} --allow-root --path=/var/www/html
fi
while true; do
	sleep 1000
done
exec "$@"

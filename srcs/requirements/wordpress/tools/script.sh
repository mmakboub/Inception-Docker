#!/bin/bash
	# service php7.3-fpm start
	cd /var/www/html
	rm -rf *
	chmod 777 /var/www/html/
	chown -R www-data:www-data /var/www/html/
	wp core download --allow-root 

	wp config create --allow-root --dbname=${SQL_DATABASE} --dbuser=${SQL_USER} --dbpass=${SQL_PASSWORD} --dbhost="mariadb"  --skip-check
	wp core install --allow-root --url=${DOMAIN_NAME} --title='inception' --admin_user=${WP_ADMIN_NAME} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_MAIL} --allow-root --path=/var/www/html
	wp user create --allow-root ${WP_USER $WP_MAIL} --user_pass=${WP_USER_PASS} --allow-root --path=/var/www/html

php-fpm7.3 -F
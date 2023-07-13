 #!/bin/bash
wp core download --allow-root --version=6.2.2
wp  creat config set DB_NAME "wordpress" --allow-root
wp config set DB_USER "mmakboub" --allow-root
wp config set DB_PASSWORD "azerty321QWE" --allow-root
wp config set DB_HOST "mariadb" --allow-root
wp core install  --allow-root --url=$WP_URL --title=$WP_TITLE --admin_name=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL
wp user --allow-root create $WP_USER $WP_USER_EMAIL --user_pass=$WP_USER_PASS --role=author
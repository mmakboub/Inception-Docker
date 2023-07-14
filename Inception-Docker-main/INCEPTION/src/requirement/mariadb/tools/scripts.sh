service mysql start;
mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
mysql -e "CREATE USER IF NOT EXISTS  \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"
# mysqladmin -u root -p${SQL_ROOT_PASSWORD} shutdown
# sh mysqld  -u root -p${SQL_ROOT_PASSWORD}
while true; do
    sleep 1
done


# CREATE DATABASE IF NOT EXISTS wordpress;
# CREATE USER IF NOT EXISTS 'yjjty'@'%' IDENTIFIED BY 'ghnjy';
# GRANT ALL PRIVILEGES ON wordpress.* to 'yjjty'@'%' IDENTIFIED BY 'ghnjy';
# UPDATE mysql.user SET authentication_string=PASSWORD('fhhgf'), plugin='mysql_native_password' WHERE User='root';
# FLUSH PRIVILEGES;
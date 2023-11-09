#!/bin/sh

#while ! mariadb -h${MYSQL_HOSTNAME} -u${MYSQL_USERNAME} -p${MYSQL_PASSWORD} ${MYSQL_WORDPRESS_DATABASE} 2> /dev/null; do
#	sleep 3
#done

if [ ! -f "/var/www/html/index.html" ]; then
	echo "[WP Container] It seems that wp-cli isn't installed, installing it right now..."
	
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	php wp-cli.phar --info

	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp
	wp cli update

	wp core download --allow-root
	echo "[WP Container] wp-cli installed and updated!"
fi

tail -f /dev/null


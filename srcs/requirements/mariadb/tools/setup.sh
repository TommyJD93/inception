echo "[DB] mariadb installation script..."

mysql_install_db 

mysqld --bind-address=127.0.0.1 --user=root --datadir=/data --skip-networking=0 & SQL_PID=$!

echo "CREATE DATABASE $MYSQL_WORDPRESS_DATABASE;" | mysql -u root
echo "CREATE USER IF NOT EXIST '$MYSQL_USERNAME'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON WordPress.* TO '$MYSQL_USERNAME'@'%';" | mysql -u root

echo "[DB] reboot..."
kill $SQL_PID
wait $SQL_PID

mysqld --bind-address=0.0.0.0 --user=root --datadir=/data --skip-networking=0

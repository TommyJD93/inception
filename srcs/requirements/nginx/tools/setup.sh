echo "[Nginx] Creating SSL Certificate"
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/pcoletta.42.fr.key -out /etc/ssl/pcoletta.42.fr.crt -subj "/C=IT/L=Rome/O=42Roma/OU=student/CN=gfezzuog.42.fr"

echo "[Nginx] starting Nginx"
nginx -g " deamon off"

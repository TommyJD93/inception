echo "[WEB-Server] creating SSL Certificate"
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/tterribi.42.fr.crt -subj "/C=IT/L=Rome/O=42Roma/OU=student/CN=tterribi.42.fr"

mkdir -p /etc/nginx/sites-available/
mkdir -p /etc/nginx/sites-enabled/

echo "[WEB-Server]"
nginx -g "daemon off;"

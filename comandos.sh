# 1. Configuración de Servidores DNS
# En servidor1 (maestro):
sudo nano /etc/bind/named.conf.local
sudo nano /etc/bind/db.empresa.local
sudo nano /etc/bind/db.jorgecortes.com
sudo nano /etc/bind/db.56.168.192
sudo systemctl restart bind9
# En servidor2 (esclavo):
sudo nano /etc/bind/named.conf.local
# En anfitrión:
dig @192.168.56.21 maestro.empresa.local
sudo systemctl stop bind9 # En servidor1 para la prueba

# 2. Compresión en Apache
# En servidor1:
sudo a2enmod deflate
sudo a2ensite compresion.empresa.local.conf
sudo a2ensite parcial.jorgecortes.com.conf
sudo systemctl reload apache2
# En anfitrión:
curl -I -H "Accept-Encoding: gzip" http://parcial.jorgecortes.com/test.html

# 3. Exposición con ngrok
# En servidor1:
sudo nano /var/www/html/test_ngrok.html
# En anfitrión:
ngrok http 192.168.56.20:80

#!/bin/bash

wget http://sourceforge.net/projects/openemr/files/OpenEMR%20Current/4.1.2.7/openemr-4.1.2.tar.gz
tar -pxvzf openemr-4.1.2.tar.gz
rm openemr-4.1.2.tar.gz
mv openemr-4.1.2 /var/www/openemr
cd /var/www

#remove the basic page for apache
rm -R /var/www/html
rm /etc/apache2/sites-enabled/000-default.conf
 #to fix error relate to ip address of container  apache2
 echo "ServerName localhost" | sudo tee /etc/apache2/conf-available/fqdn.conf
 ln -s /etc/apache2/conf-available/fqdn.conf /etc/apache2/conf-enabled/fqdn.conf
 #disable http
 sed -i 's/Listen 80/#Listen 80/' /etc/apache2/ports.conf
 #enabling ssl  , maybe need to move enabling to startup 
 a2enmod ssl
 sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/openemr/' /etc/apache2/sites-available/default-ssl.conf
 a2ensite default-ssl

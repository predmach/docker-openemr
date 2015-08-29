#!/bin/bash

#downloading software openemr
wget http://sourceforge.net/projects/openemr/files/OpenEMR%20Current/4.2.0.3/openemr-4.2.0.tar.gz
tar -pxvzf openemr-4.2.0.tar.gz
rm openemr-4.2.0.tar.gz
mv openemr-4.2.0 /var/www/openemr

#remove the basic page for apache
rm -R /var/www/html
rm /etc/apache2/sites-enabled/000-default.conf
 #to fix error relate to ip address of container  apache2
 echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf
 ln -s /etc/apache2/conf-available/fqdn.conf /etc/apache2/conf-enabled/fqdn.conf
 #disable http
 sed -i 's/Listen 80/#Listen 80/' /etc/apache2/ports.conf
 #for ssl, enabling move to startup.sh script .
 sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/openemr/' /etc/apache2/sites-available/default-ssl.conf

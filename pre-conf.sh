#!/bin/bash


wget http://sourceforge.net/projects/openemr/files/OpenEMR%20Current/4.1.2.7/openemr-4.1.2.tar.gz
tar -pxvzf openemr-4.1.2.tar.gz
rm openemr-4.1.2.tar.gz
mv openemr-4.1.2 /var/www/openemr
cd /var/www

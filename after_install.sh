#!/bin/bash
#need to be added after_install scritp to get password of default user koha_library

cd /var/www
    chmod 644 openemr/library/sqlconf.php 
    chmod 600 openemr/acl_setup.php 
    chmod 600 openemr/acl_upgrade.php 
    chmod 600 openemr/sl_convert.php 
    chmod 600 openemr/setup.php 
    chmod 600 openemr/sql_upgrade.php 
    chmod 600 openemr/gacl/setup.php 
    chmod 600 openemr/ippf_upgrade.php
    
     #security tweak
    mysqladmin -u root password mysqlpsswd
    mysqladmin -u root -pmysqlpsswd reload
    

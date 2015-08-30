# docker-openemr

Docker container for [OpenEMR 4.2.0][3]

"OpenEMR is a Free and Open Source electronic health records and medical practice management application that can run on Windows, Linux, Mac OS X, and many other platforms. OpenEMR is ONC certified and is one of the most popular open source electronic medical records in use today. OpenEMR is [supported][6] by a strong community of volunteers and [professionals][7] all with the common goal of making OpenEMR a superior alternative to its proprietary counterparts. The OpenEMR community is dedicated to guarding OpenEMR's status as a free, open source software solution for medical practices and is dedicated to maintaining a spirit of openness, kindness and cooperation."

## Install dependencies

  - [Docker][2]

To install docker in Ubuntu 14.04 use the commands:

    $ sudo apt-get update
    $ wget -qO- https://get.docker.com/ | sh

 To install docker in other operating systems check [docker online documentation][4]

## Usage

If you need a MySQL database you can link container :

    $ docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=mysecretpassword  -e MYSQL_DATABASE=openemr \
    -e MYSQL_USER=openemruser -e MYSQL_PASSWORD=openemrdbpasswd -d mysql
    
In case you want to used pre-existing mysql container , you can add the new database by connecting to it with docker exec -it some-mysql bash and manual adding _openemr_ database or you can link and used _quantumobject/docker-mywebsql_ to create database _openemr_ and user _openemruser_ plus need to grant all permision of this user to the _openemr_ database.

Them create, run and link to the OpenEMR container:

    $ docker run -d -p 443 --link some-mysql:db quantumobject/docker-openemr

where when been ask for database need to replace localhost for db.

## Web install procedure :

Check with your browser to the assigned xxxx port by docker or you for port 443 to  continue web installation.

  - **https://host_ip:port/**

Where you need to fallow this steps :

  - Open EMR Setup : press _continue_.

  - Open EMR Setup step 1 : option suppose to be "I have already created the database" and press _continue_.

  - Open EMR Setup step 2 : 

   MYSQL SERVER: 
    - Server Host ==> db  (this is relate to link container _some-mysql:db_)
    - Database Name ==> openemr
    - Login Name ==> openemruser
    - PASSWORD ==> opendbpasswd or the one you are using when database was create ...
    - ........
    - Root Pass:  ==> nothing there. 
    - User Hostname ==> localhost
    - .......
 
  OPENEMR USER:

   - Initial User Password: need to entry a new passowrd for admin user(remember it needed to log in).
   - Press _continue_.

- Open EMR Setup step 3 to 6 : press continue.

- Open EMR Setup step congratualtion page : press _continue_.

After the web installation need to run this command to increase security :

    $ docker exec -it container_id after_install

## More Info

About OpenEMR: [www.open-emr.org][1]

To help improve this container [quantumobject/docker-openemr][5]

Example of [OpenEMR][8]

[1]:http://open-emr.org/
[2]:https://www.docker.com
[3]:http://open-emr.org/wiki/index.php/OpenEMR_Downloads
[4]:http://docs.docker.com
[5]:https://github.com/QuantumObject/docker-openemr
[6]:http://open-emr.org/wiki/index.php/OpenEMR_Support_Guide
[7]:http://open-emr.org/wiki/index.php/OpenEMR_Professional_Support
[8]:https://www.quantumobject.com:49163/

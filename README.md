# docker-openemr

Docker container for [OpenEMR 4.2.0][3]

"OpenEMR is a Free and Open Source electronic health records and medical practice management application that can run on Windows, Linux, Mac OS X, and many other platforms. OpenEMR is ONC certified and is one of the most popular open source electronic medical records in use today. OpenEMR is [supported][6] by a strong community of volunteers and [professionals][7] all with the common goal of making OpenEMR a superior alternative to its proprietary counterparts. The OpenEMR community is dedicated to guarding OpenEMR's status as a free, open source software solution for medical practices and is dedicated to maintaining a spirit of openness, kindness and cooperation."

## Install dependencies

  - [Docker][2]

To install docker in Ubuntu 14.04 use the commands:

    $ sudo apt-get update
    $ sudo apt-get install docker.io

 To install docker in other operating systems check [docker online documentation][4]

## Usage

To run container use the command below:

    $ docker run -d -p 443 quantumobject/docker-openemr

## Web install procedure :

Check with your browser to the assigned port by docker for port 443 to  continue web installation.

Where you need to fallow this steps :

  - Open EMR Setup : press next.

  - Open EMR Setup step 1 : press continue (option suppose to be "Have setup create the database").

  - Open EMR Setup step 2 : 

   MYSQL SERVER: 

   - PASSWORD ==> need to entry a new password for it (remember it).

   - Root Pass:  ==> nothing there. 
 
  OPENEMR USER:

   - Initial User Password: need to entry a new passowrd for admin user(remember it needed to log in).

   - Press continue.

- Open EMR Setup step 3 to 6 : press continue.

- Open EMR Setup step congratualtion page : press continue.

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

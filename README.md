docker-openemr
==============

Open Source electronic health records and medical practice management application(OpenEMR) container

To execute to container :

docker run -d -p 443 quantumobject/docker-openemr

check with your brownser to the assigned port by docker for port 443 to  continue web installation.

Web install procedure :

Open EMR Setup : press next

Open EMR Setup step 1 : press continue "option suppose to be "Have setup create the database""

Open EMR Setup step 2 : 

MYSQL SERVER: 

PASSWORD ==> need to entry a new password for it (remember it )

Root Pass:  ==> nothing there 
 
OPENEMR USER:

Initial User Password: need to entry a new passowrd for admin user ..(remember it needed to log in)

press continue ..

Open EMR Setup step 3 to 6 : press continue

Open EMR Setup step congratualtion page : press continue

after the web installation need to run this command to increase security :

docker exec -it container_id after_install

[example of running container](https://www.quantumobject.com:49163/)

[http://open-emr.org/](http://open-emr.org/)

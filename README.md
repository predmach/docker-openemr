docker-openemr
==============

Open Source electronic health records and medical practice management application(OpenEMR) container

To execute to container :

docker run -d -p 443 quantumobject/docker-openemr

check with your brownser to the assigned port by docker for port 443 to  continue web installation.




after the web installation need to run this command to increase security :

docker exec -it container_id after_install

[example of running container](https://www.quantumobject.com:49163/)

[http://open-emr.org/](http://open-emr.org/)

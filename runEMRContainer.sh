#!/bin/bash
docker run --name DB -e MYSQL_ROOT_PASSWORD=root -d predmach/mysql-emr
docker run -d -p 80:80 --name open-emr --link DB:DB predmach/open-emr                                                                                                                                              

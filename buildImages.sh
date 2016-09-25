#!/bin/bash
docker rmi predmach/mysql-emr
docker stop DB
docker rm DB
docker build -f Dockerfile-MySql -t predmach/mysql-emr .

docker stop open-emr
docker rm open-emr
docker rmi predmach/open-emr
docker build -f Dockerfile-EMR -t predmach/open-emr .

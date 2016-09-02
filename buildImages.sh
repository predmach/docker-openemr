#!/bin/bash
docker build -f Dockerfile-MySql -t predmach/mysql-emr .
docker build -f Dockerfile-EMR -t predmach/open-emr .

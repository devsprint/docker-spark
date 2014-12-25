#!/bin/bash

docker run -d --name cass1 -h cass1 poklet/cassandra
CASSIP=$(docker inspect -f "{{.NetworkSettings.IPAddress}}" cass1)

docker run -d --name sparkmaster -h sparkmaster -p 8080:8080 -p 7077:7077 --add-host="cass:${CASSIP}" omriiluz/spark-standalone
MASTERHOST=$(docker inspect -f "{{ .Config.Hostname }}" sparkmaster)
MASTERIP=$(docker inspect -f "{{.NetworkSettings.IPAddress}}" sparkmaster)

docker run -d --name sparkworker1 --add-host="sparkmaster:${MASTERIP}" --link sparkmaster:master --add-host="cass:${CASSIP}" omriiluz/spark-worker
docker run -d --name sparkworker2 --add-host="sparkmaster:${MASTERIP}" --link sparkmaster:master --add-host="cass:${CASSIP}" omriiluz/spark-worker

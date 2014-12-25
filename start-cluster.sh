#!/bin/bash

docker run -d --name cass1 poklet/cassandra
docker run -d --name sparkmaster omriiluz/spark-standalone

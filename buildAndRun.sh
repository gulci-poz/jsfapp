#!/bin/sh
mvn clean package && docker build -t pl.gulci/jsfapp .
docker rm -f jsfapp || true && docker run -d -p 8080:8080 -p 4848:4848 --name jsfapp pl.gulci/jsfapp 

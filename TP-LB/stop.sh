#!/bin/bash

docker stop nginx1 nginx2 nginx-lb
docker rm -f nginx1 nginx2 nginx-lb 2>/dev/null
docker network rm tplb

#!/bin/bash

docker build -t docker-project .
docker run -d --rm --name docker-project docker-project
sleep 15
if [ "$( docker container inspect -f '{{.State.Running}}' docker-project )" == "true" ]; then
	echo "Docker is still up, you fucked up !!!"
    exit 1
else
	echo "It's all good, man !!!"
fi

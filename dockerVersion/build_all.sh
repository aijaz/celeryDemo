#!/bin/bash

docker rm -vf $(docker ps -aq) > /dev/null 2>&1 && docker rmi -f $(docker images -aq) > /dev/null 2>&1

docker network rm aijaz_network


pushd app || exit 1
docker build -t my_app_i .
docker build -t my_worker_i -f celeryDockerfile .
popd || exit 1

pushd rabbitmq || exit 1
docker build -t my_rabbitmq_i .
popd || exit 1

pushd postgres || exit 1
docker build -t my_postgres_i .
popd || exit 1



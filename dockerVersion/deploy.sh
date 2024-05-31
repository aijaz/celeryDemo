#!/bin/bash

# Create a docker network named aijaz_network if one doesn't already exist.
docker network create --driver bridge aijaz_network || true

docker run -d -it --name my_app_c    \
       --network aijaz_network \
       my_app_i

docker run -d -it --name my_worker_c    \
       --network aijaz_network \
       my_worker_i

docker run -d -it --name my_rabbitmq_c    \
       --network aijaz_network \
       -p 5672:5672 my_rabbitmq_i
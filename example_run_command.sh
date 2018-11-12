#!/bin/bash

# log in with username rstudio and password set below.
docker run -p 8787:8787 -d \
--mount type=bind,source="$(pwd)",destination=/home/rstudio/working \
-e PASSWORD=secretPassword -e ROOT=TRUE \
--name my_container_name \
tsawallis/decision_confidence_docker_r

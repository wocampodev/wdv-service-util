#!/bin/sh

# Windows
docker context create sandbox \
  --default-stack-orchestrator=swarm \
  --docker host=npipe:////./pipe/docker_engine \
  --description "Util services for POC"

# Unix
###
#docker context create sandbox \
#  --default-stack-orchestrator=swarm \
#  --description "Util services for POC"
#  --docker host=unix:///var/run/docker.sock \
###

docker context use sandbox

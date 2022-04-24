#!/bin/bash
set -e

sudo docker-compose down
sudo docker volume ls -qf dangling=true | xargs -r docker volume rm
sudo docker-compose build

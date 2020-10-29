#!/bin/bash
sudo docker-compose -f docker-compose.yml up -d --build

sudo docker exec -uroot -it ubuntu-20.04 /bin/bash

sudo docker-compose down
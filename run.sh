#!/bin/bash
sudo docker-compose -f docker-compose.yml up -d --build

sudo docker inspect ubuntu-20.04 | grep '"IPAddress"' | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"

sudo docker exec -it ubuntu-20.04 /bin/bash

sudo docker-compose down
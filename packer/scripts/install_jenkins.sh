#!/bin/bash -e

sudo docker pull jenkins
sudo docker run -d --restart=always -p 8080:8080 -p 50000:50000 jenkins

#!/bin/bash
set -e

cd /etc/yum.repos.d/
sudo wget -S -T 10 -t 5 https://s3-eu-west-1.amazonaws.com/xxxxxxx/mongodb-org-3.0.repo
sudo yum install -y mongodb-org
sudo service mongod start

#!/bin/bash

echo "setup stage"
apt-get update
apt-get install -y curl jq

curl https://get.docker.com | sudo bash
usermod -aG docker jenkins

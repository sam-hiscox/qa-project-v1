#!/bin/bash

echo "setup stage"
sudo apt-get update
sudo apt-get install -y curl jq

curl https://get.docker.com | sudo bash
sudo usermod -aG docker jenkins

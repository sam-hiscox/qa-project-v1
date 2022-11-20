#!/bin/bash

echo "setting up docker..."
sudo apt-get update -s
sudo apt-get install -y curl jq

sudo curl https://get.docker.com | sudo bash
sudo usermod -aG docker jenkins

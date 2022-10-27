#!/bin/bash

echo "building app..."

cd ~/qa-project-v1

docker build -t myapp .

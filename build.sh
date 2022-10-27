#!/bin/bash

echo "building app..."

cd /home/jenkins/.jenkins/workspace/pipeline-1/website

docker build -t myapp .

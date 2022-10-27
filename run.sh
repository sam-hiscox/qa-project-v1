#!/bin/bash

echo "running app..."

cd /home/jenkins/.jenkins/workspace/pipeline-1/

docker run -d   -p 5000:5000   --name myapp myapp

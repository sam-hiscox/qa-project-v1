#!/bin/bash

echo "running app..."

docker run -d   -p 5000:5000   --name myapp myapp

#!/bin/bash

docker build -t ade .
docker run -d -p 8080:8080 ade
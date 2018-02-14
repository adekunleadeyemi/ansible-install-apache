#!/bin/bash

docker image build -t ade
docker run -d -p 8080:8080 ade
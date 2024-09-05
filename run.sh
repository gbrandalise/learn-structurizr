#!/bin/bash

docker run -it --rm -p ${HOST_PORT:-3000}:8080 -v ./:/usr/local/structurizr structurizr/lite
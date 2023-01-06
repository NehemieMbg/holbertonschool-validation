#!/bin/bash

# spawn a sandboxed environment (Ubuntu 18.04)
docker run --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash

# Installation of Go-Hugo and Make command
apt-get update && apt-get install -y hugo make

# Running command build to build the website
make build

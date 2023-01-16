#!/bin/bash

# Update package manager
apt-get update -y

# Install other dependencies
apt-get install -y hugo

# Remove Golang
apt-get remove -y golang

#!/bin/bash

# fixing the recipe for 'build' target fail
# getting latest release of 'hugo'
wget https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb	
# install it
sudo dpkg -i hugo_extended_0.109.0_linux-amd64.deb	
npm install -g markdownlint-cli

#!/usr/bin/env bash

apt-get update
apt-get install -y nodejs
apt-get install -y npm
apt-get install -y git
apt-get install -y redis-server
cd /usr/local/bin && ln -s /usr/bin/nodejs node
npm install -g nodemon
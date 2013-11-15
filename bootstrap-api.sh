#!/usr/bin/env bash

git clone git://github.com/warelab/gramene-api
cd gramene-api
npm install
source sage.env
MONITOR="nohup nodemon -x" sage start
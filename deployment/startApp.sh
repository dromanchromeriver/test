#!/bin/sh

cd /myapp

export NODE_PORT=1337

sudo /usr/bin/npm install /myapp/

sudo /usr/bin/node /myapp/app.js & exit 0

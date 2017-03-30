#!/bin/sh

cd /myapp

export NODE_PORT=1337

/usr/bin/npm install /myapp/

/usr/bin/node /myapp/app.js & exit 0

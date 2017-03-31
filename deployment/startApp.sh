#!/bin/bash

cd /myapp

export NODE_PORT=1337

#/usr/bin/npm install /myapp/

npm install

#/usr/bin/node /myapp/app.js > /dev/null 2> /dev/null < /dev/null &

#redirecting stdout, stderr, and stdin to /dev/null
node app.js > /dev/null 2> /dev/null < /dev/null &

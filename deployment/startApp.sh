#!/bin/bash

cd /myapp

export NODE_PORT=1337

/usr/bin/npm install /myapp/

/usr/bin/node /myapp/app.js > /dev/null 2> /dev/null < /dev/null &

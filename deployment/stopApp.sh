#!/bin/sh

kill `ps -ae |grep node |grep -v grep|awk '{print $1}'` | exit 0

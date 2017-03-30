#!/bin/sh

PID=$( ( ps -ae |grep node |grep -v grep|awk '{print $1}' ) ) #check for node process id


#if we have a process value in @var then we need to remove(kill) it
if [ "$PID" ]; then
	kill `ps -ae |grep node |grep -v grep|awk '{print $1}'` | exit 0
fi

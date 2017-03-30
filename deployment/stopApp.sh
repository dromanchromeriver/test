#!/bin/bash

if [ "ps -ae |grep node |grep -v grep|awk '{print $1}'" -gt 0 ] 
	kill `ps -ae |grep node |grep -v grep|awk '{print $1}'` | exit 0
then
fi



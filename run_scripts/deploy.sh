#!/bin/bash

cd `dirname $0`/../

echo "start deploy hexo, workspace: ${PWD}"

hexo generate 
hexo deploy 

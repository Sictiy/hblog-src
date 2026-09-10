#!/bin/bash

cd `dirname $0`/../

echo "start hexo, workspace: ${PWD}"

hexo generate 
hexo server >> ./hexo.log 2>&1

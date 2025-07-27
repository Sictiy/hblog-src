#!/bin/bash
# 不需要再容器内自行拉取更新
# git pull
echo "hexo start run ..."
hexo generate 
hexo server >> ./hexo.log 2>&1

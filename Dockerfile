FROM node:latest

WORKDIR /hexo

# gitclone到本地 再复制到容器内
COPY ./hblog-src /hexo

RUN echo "npm set mirror..." \
	&& npm config set registry https://registry.npmmirror.com \
	&& npm cache clean -f

RUN echo "npm install..." \
	&& npm install hexo-cli -g \
	&& npm install

ENTRYPOINT ["sh", "/hexo/run_scripts/entrypoint.sh"]

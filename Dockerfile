FROM node:latest

WORKDIR /hexo

# gitclone到本地 再复制到容器内
COPY ./hblog-src /hexo

RUN echo "npm set mirror..." \
	&& npm config set registry https://registry.npmmirror.com \
	&& npm cache clean -f

RUN echo "npm install..." \
	#&& npm config set proxy http://172.17.0.1:1080 \
	#&& npm config set https-proxy http://172.17.0.1:1080 \
	#&& npm install -g npm \
	&& npm install

ENTRYPOINT ["sh", "/hexo/entrypoint.sh"]

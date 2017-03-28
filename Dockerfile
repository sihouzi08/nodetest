#设置基础镜像,如果本地没有该镜像，会从Docker.io服务器pull镜像
FROM nodered/node-red-docker

#创建app目录,保存我们的代码
RUN mkdir -p /home/user
#设置工作目录
WORKDIR /home/user

#复制所有文件到 工作目录。
COPY . /home/user

RUN npm install

#运行命令
CMD ["npm", "start"]
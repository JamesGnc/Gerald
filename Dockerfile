# 1. 使用官方的 Node.js 镜像作为基础镜像
FROM node:16

# 2. 设置工作目录
WORKDIR /usr/src/app

# 3. 复制 package.json 和 package-lock.json 文件
COPY package*.json ./

# 4. 安装项目依赖
RUN npm install

# 5. 复制项目的所有文件到工作目录中
COPY . .

# 6. 运行构建命令
RUN npm run build

# 7. 暴露服务器运行的端口（通常为 Vite 的默认端口）
EXPOSE 4173

# 8. 运行容器时启动 Vite 预览服务器以提供静态文件
# CMD ["npm", "run", "preview"]
CMD ["npm", "run", "preview", "--", "--host", "0.0.0.0"]


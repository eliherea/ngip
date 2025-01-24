FROM node:latest
RUN apt-get update && apt-get install -y git
WORKDIR /app
RUN git clone https://github.com/dihkaw/showipserverwithnodejs.git .
RUN npm init -y
RUN npm install
EXPOSE 5000
CMD ['node', 'index.js']
FROM node:latest
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/bingbingbz/shadowsocks-heroku.git /app
WORKDIR /app/shadowsocks-heroku/
RUN npm install
EXPOSE 8080
CMD ["npm", "start"]

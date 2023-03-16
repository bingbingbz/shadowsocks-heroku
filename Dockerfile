FROM node:latest
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/your-repo.git /app
WORKDIR /app
CMD ["node", "index.js"]

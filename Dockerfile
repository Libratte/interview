FROM node:18
WORKDIR /app
COPY Package*.json ./
RUN npm xinstall
COPY . .
CMD ["node", "index.js"]


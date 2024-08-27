FROM node:20
EXPOSE 3001
WORKDIR /src
RUN npm install i npm@latest -g
COPY package.json package-lock*.json ./
RUN npm install
COPY . .
CMD [ "node","app/index.js" ]
FROM node:12

RUN mkdir /app
WORKDIR /app

COPY ./package.json ./package-lock.json ./
RUN npm ci

COPY src ./

RUN npm run build

EXPOSE 80
CMD ["npm", "start"]

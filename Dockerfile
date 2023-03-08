FROM node:18.7.0

RUN mkdir /app
WORKDIR /app

COPY ./package.json ./package-lock.json ./

RUN npm ci

COPY ./src ./src
COPY ./public ./public

ENV RELEASE_VERSION=4.14.0

RUN npm run build

EXPOSE 80
CMD ["npm", "start"]

FROM node:12

RUN mkdir /app
WORKDIR /app

COPY ./package.json ./package-lock.json ./
RUN npm ci

COPY src src

ENV RELEASE_VERSION=4.0.0

RUN npm run build

EXPOSE 80
CMD ["npm", "start"]

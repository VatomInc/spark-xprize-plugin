FROM node:16.15.0-alpine

WORKDIR /app

COPY package.json yarn.lock tsconfig.json ./
COPY node_modules ./node_modules
COPY src ./src

RUN yarn build

EXPOSE 3000

ENTRYPOINT ["yarn", "-s", "start"]
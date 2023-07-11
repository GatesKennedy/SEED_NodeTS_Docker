FROM node:16 as base

WORKDIR /home/node/app

COPY package.json ./

RUN npm i

# Copy all source files
COPY . .

FROM base as production

ENV NODE_PATH=./build

RUN npm run build
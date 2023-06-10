FROM node:lts-alpine3.15

WORKDIR /home/app

# RUN mkdir -p ./dist
# RUN mkdir -p ./uploads
# RUN mkdir -p ./logs

COPY dist ./dist
COPY uploads ./uploads
COPY logs ./logs

COPY package*.json ./
COPY tsconfig.json ./
COPY tsconfig.build.json ./

COPY migrations ./migrations
COPY typings ./typings
COPY src ./src

COPY package*.json tsconfig.json tsconfig.build.json ./

RUN npm ci

CMD ["npm", "run typeorm:migration && npm run start:dev"]
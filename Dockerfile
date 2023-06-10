FROM node:lts-alpine

WORKDIR /home/app

COPY package*.json ./
COPY tsconfig.json ./
COPY tsconfig.build.json ./

RUN npm ci --only=production

COPY dist ./dist
# COPY uploads ./uploads
COPY logs ./logs

CMD ["node", "npm run typeorm:migration && npm run start:dev"]
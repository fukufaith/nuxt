FROM node:8.11.3-alpine

ENV NODE_ENV=development
ENV HOST 0.0.0.0

RUN mkdir -p /app
COPY . /app
WORKDIR /app

EXPOSE 3000

RUN yarn && yarn cache clean
RUN yarn build

CMD ["yarn", "dev"]

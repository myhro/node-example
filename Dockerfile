FROM node:20

# https://github.com/nodejs/docker-node/blob/a7c34a2/docs/BestPractices.md#handling-kernel-signals
RUN apt update && apt install -y tini

ADD . /app

WORKDIR /app

RUN npm install

CMD ["tini", "--", "node", "app.js"]

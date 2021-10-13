FROM alpine

WORKDIR /app

RUN apk add --no-cache nodejs npm

COPY ./tools/package*.json ./

RUN npm i

RUN npm audit fix --force

COPY ./tools/ .

CMD ["npm", "run", "start"]

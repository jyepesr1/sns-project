FROM node:10-alpine

# Create app directory
RUN mkdir -p /home/node/sns-project/ && chown -R node:node /home/node/

WORKDIR /home/node/sns-project

COPY package*.json *yarn* ./

RUN yarn install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "yarn", "start" ]
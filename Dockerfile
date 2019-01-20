FROM node:11.1.0-stretch

RUN npm i -g pm2 && pm2 update
RUN npm i -g @adonisjs/cli
RUN npm i -g nodemon
RUN yarn install --ignore-engines

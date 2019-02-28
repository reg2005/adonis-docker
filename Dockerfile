FROM node:11.1.0-stretch

# Set the working directory to /app
WORKDIR /app

RUN npm i -g pm2 && pm2 update
RUN npm i -g @adonisjs/cli
RUN npm i -g nodemon
# Copy the current directory contents into the container at /app
COPY . /app
RUN yarn install --ignore-engines

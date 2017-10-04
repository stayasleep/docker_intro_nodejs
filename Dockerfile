#Define from what image we want to build from, we will use the latest long term support version boron of node
FROM node:boron

#We create a directory to hold the application code inside the image, this is our application's working directory
WORKDIR /usr/src/app

#Install our app dependencies using npm binary
COPY package.json ./

RUN npm install

#Rather than copy entire workdir, we only copy the package.json. Bundle app source code inside the Docker image
COPY . .

#Need to map the port our app is bound to to the docker daemon
EXPOSE 1337

#Define the command to run your app, we will use the basic npm start script

CMD ["npm","start"]

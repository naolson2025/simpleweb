# specify base image that already has node installed
# using the alpine image here would not work because it doesn't have node
# here the alpine version of node just means its a small version of node
FROM node:alpine

WORKDIR /usr/app
# copy package.json to the working directory. This is done first so that
# the dependencies are not reinstalled every time a file is changed
COPY ./package.json ./
# install dependencies
RUN npm install
# copy all files from the simpleweb directory to the container
COPY ./ ./

# Default command
CMD ["npm", "start"]
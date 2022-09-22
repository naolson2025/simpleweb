# specify base image
FROM node:alpine

# install dependencies
RUN npm install

# Default command
CMD ["npm", "start"]
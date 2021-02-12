# Specify a base image
FROM node:alpine

# Specify working directory 
WORKDIR /app

COPY ./package.json ./
# COPY package*.json ./

# Install some dependencies
RUN npm install

COPY . .

# Default command
CMD ["npm", "start"]

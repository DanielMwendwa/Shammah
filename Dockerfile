# Builds a React app and puts the static assets in the build folder
FROM node:alpine AS ui-build
WORKDIR /usr/src/app
COPY frontend/ ./frontend/
RUN cd frontend && npm install && npm run build

# Takes the static build files and serve them with node server
FROM node:alpine AS server-build
WORKDIR /root/
COPY --from=ui-build /usr/src/app/frontend/build ./frontend/build
COPY package*.json .
RUN npm install
COPY . .

CMD ["npm", "start"]

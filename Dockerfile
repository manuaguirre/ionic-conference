FROM node:13-alpine as build
WORKDIR /app
COPY package*.json /app/
RUN npm install -g ionic serve
RUN npm install
COPY ./ /app/
RUN npm run build
EXPOSE 5000
CMD ["npm", "serve"]
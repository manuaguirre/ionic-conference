FROM node:13-alpine
WORKDIR /app/
COPY package*.json .
RUN npm install -g @ionic/cli serve
RUN npm install
COPY . ./
EXPOSE 5000
RUN pwd; ls; echo "\n"; ls /app;
CMD ["npm", "start"]
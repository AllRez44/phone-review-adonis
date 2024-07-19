FROM node:20-slim as build
WORKDIR /app
COPY package*.json .
RUN npm i && npm cache clean --force
COPY . .
EXPOSE ${PORT}
RUN npm run build
CMD ["npm", "run", "dev"]

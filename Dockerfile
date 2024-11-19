# Etapa de Build
FROM node:18 AS build-stage

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

# Etapa de Produção
FROM node:18-slim AS production-stage

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app /usr/src/app

RUN npm install --production

EXPOSE 5000

CMD ["npm", "start"]

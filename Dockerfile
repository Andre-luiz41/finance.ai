# Usar a imagem oficial do Node.js
FROM node:18

# Definir o diretório de trabalho no contêiner
WORKDIR /usr/src/app

# Copiar os arquivos package.json e package-lock.json
COPY package*.json ./

# Instalar as dependências
RUN npm install

# Copiar os arquivos restantes para o contêiner
COPY prisma ./prisma

# Rodar o comando Prisma para gerar o cliente
RUN npx prisma generate

# Expor a porta do aplicativo
EXPOSE 5000

# Rodar o aplicativo
CMD ["npm", "start"]

# Use uma imagem base do Node.js
FROM node:14

# Crie um diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copie os arquivos necessários para o contêiner
COPY package*.json ./
COPY server.js ./
COPY public ./public
COPY uploads ./uploads

# Instale as dependências do Node.js
RUN npm install

# Exponha a porta que sua aplicação Node.js estará ouvindo
EXPOSE 3001

# Comando para iniciar a aplicação
CMD [ "npm", "start" ]
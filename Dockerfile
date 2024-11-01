# Usando a imagem oficial do Node.js
FROM node:14

# Definindo o diretório de trabalho
WORKDIR /usr/src/app

# Copiando o package.json e instalando as dependências
COPY package*.json ./
RUN npm install

# Copiando o restante da aplicação
COPY . .

# Comando para iniciar a aplicação
CMD ["node", "app.js"]

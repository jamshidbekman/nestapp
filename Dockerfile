# 1. Node.js image'dan foydalanamiz
FROM node:18-alpine 

# 2. Ishchi katalog yaratamiz
WORKDIR /app

# 3. Package'larni nusxalaymiz va o‘rnatamiz
COPY package.json package-lock.json ./
RUN npm install

# 4. Kodni nusxalaymiz
COPY . .

# 5. Portni ochamiz
EXPOSE 3000

# 6. Serverni ishga tushiramiz
CMD ["npm", "run", "start"]

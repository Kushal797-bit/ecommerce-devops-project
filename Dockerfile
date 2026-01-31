# 1️⃣ Use a compatible Node.js version (fixes bcrypt issue)
FROM node:14

# 2️⃣ Create app directory inside container
WORKDIR /app

# 3️⃣ Copy dependency files first (Docker layer caching)
COPY backend/package*.json ./

# 4️⃣ Install dependencies inside container
RUN npm install

# 5️⃣ Copy rest of application code
COPY backend/ .

# 6️⃣ Expose application port
EXPOSE 3000

# 7️⃣ Start the application
CMD ["npm", "start"]

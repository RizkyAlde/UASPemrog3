# Gunakan base image Node.js
FROM node:14

# Tentukan direktori kerja di dalam container
WORKDIR /app

# Salin package.json dan package-lock.json ke dalam direktori kerja
COPY package*.json ./

# Install dependensi
RUN npm install

# Salin seluruh konten proyek ke dalam direktori kerja di dalam container
COPY . .

# Port yang akan diexpose oleh container
EXPOSE 3000

# Perintah untuk menjalankan aplikasi ketika container dijalankan
CMD ["node", "app.js"]

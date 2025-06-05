# Use official Node.js LTS image as base
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json if present
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port
EXPOSE 4000

# Build and run the application
CMD ["sh", "-c", "npm i gitfolio -g && gitfolio build christianGRogers --sort pushed --order desc --theme dark --background 'https://www.pixeoapp.com/wp-content/uploads/2022/02/barrie-spirit-catcher-photo-by-shawn-m-kent.jpg' && gitfolio run -p 4000"]

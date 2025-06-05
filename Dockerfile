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
CMD ["sh", "-c", "gitfolio build christianGRogers && gitfolio run -p 4000"]

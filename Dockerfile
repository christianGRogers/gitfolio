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
CMD ["sh", "-c", "npm i gitfolio -g && gitfolio build christianGRogers --sort pushed --order desc --theme dark --background 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pixeoapp.com%2Fphoto-spots%2Fnorth-america%2Fcanada%2Fontario%2Fbarrie-spirit-catcher%2F&psig=AOvVaw1uvIiCFbfLqP-CM4diV5-r&ust=1749172249414000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCOiMmcqM2Y0DFQAAAAAdAAAAABAE' && gitfolio run -p 4000"]

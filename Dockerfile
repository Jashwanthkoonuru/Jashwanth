# Use official Node.js image
FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 8000 (or whatever your app uses)
EXPOSE 8000

# Start the Node.js app
CMD ["node", "app.js"]

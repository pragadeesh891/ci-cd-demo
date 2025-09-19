# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source code
COPY . .

# Run tests (optional during build)
RUN npm test

# Expose port if your app runs on HTTP
EXPOSE 3000

# Start app
CMD ["node", "index.js"]

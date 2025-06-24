# Use an official Node.js runtime as base image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy application code
COPY . .

# Expose port 80
EXPOSE 80

# Run the application
CMD [ "node", "index.js" ]

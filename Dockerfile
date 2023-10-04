# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Build the React app
RUN npm run build

# Expose port 80 (the default for HTTP server)
EXPOSE 80

# Start the React app when the container starts
CMD [ "npm", "start" ]

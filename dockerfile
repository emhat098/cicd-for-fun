# Use an official Node.js runtime as a parent image
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Next.js application
RUN npm run build

# Expose port 3000 for the Next.js app
EXPOSE 3000

# Start the Next.js application
CMD ["npm", "start"]

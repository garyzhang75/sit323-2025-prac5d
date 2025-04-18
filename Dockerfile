# Use Node.js official image
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run your app
CMD ["node", "app.js"]

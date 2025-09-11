FROM node:18-alpine

# Create app dir
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json* ./
RUN npm install --production

# Copy app source
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Do not run as root
USER node

# Start the app
CMD ["node", "app.js"]

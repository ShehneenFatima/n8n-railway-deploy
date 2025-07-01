FROM node:18-alpine

# Install n8n globally
RUN npm install -g n8n

# Create app directory
WORKDIR /app

# Copy package files if you have them
COPY package*.json ./

# Install dependencies (if any)
RUN npm install

# Copy app source
COPY . .

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]

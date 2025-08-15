# Use Node.js LTS image
FROM node:lts-buster

# Set working directory
WORKDIR /app

# Clone the repo (optional – better to use COPY for your own code)
# RUN git clone https://github.com/officialpkdriller/PK-XMD.git .

# Copy local files to the container
COPY . .

# Install dependencies
RUN npm install

# Optionally install pm2 if needed globally
RUN npm install -g pm2

# Expose the app's port
EXPOSE 9090

# Start the app
CMD ["npm", "start"]

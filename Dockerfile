FROM node:lts-buster

# Clone the repository into /root/PRINCE-MDXI
RUN git clone https://github.com/mayelprince/PRINCE-MDXI.git /root/PRINCE-MDXI

# Set working directory
WORKDIR /root/PRINCE-MDXI

# Install dependencies
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1

# Expose port
EXPOSE 9090

# Start the bot with node index.js
CMD ["node", "index.js"]

# Using the nodejs image.
FROM node:18

# Set the workdir.
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Define the command to run the app
CMD ["npm", "start"]

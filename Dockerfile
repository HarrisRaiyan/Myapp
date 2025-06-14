# 1. Use official Node.js image
FROM node:18

# 2. Set the working directory in container
WORKDIR /app

# 3. Copy files from your system to container
COPY . .

RUN apt update

# 4. Install dependencies
RUN npm install

# 5. Command to run the app
#CMD ["npm", "start"]

# 6. Expose the port
EXPOSE 3000

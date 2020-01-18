FROM node:13.3.0-slim
MAINTAINER Karim Muya <github.com/orgs/CS-Project-UDSM>

# Expose the default port
EXPOSE 8080

# Create the app working directory and switch to it
RUN mkdir /app
WORKDIR /app

# Copy the package.json to the new working directory
COPY package.json /app/package.json
RUN npm install

# Copy the app
COPY . /app

# Start the app
CMD npm start
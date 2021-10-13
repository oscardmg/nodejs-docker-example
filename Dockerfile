FROM node:14

# Create a directory for the app and make it the working directory
WORKDIR /usr/src/app

# Copy package files from the local filesystem directory to the working directory of the container
# You can use a wildcard character to capture multiple files for copying. In this case we capture
# package.json and package-lock.json
COPY package*.json ./

# now install the dependencies into the container image

RUN npm install

# Copy everything from the local filesystem directory to the working directory. Including
# the source code
COPY . .

# The app runs on port 3000
EXPOSE 3000

# Use the start script defined in package.json to start the application
CMD ["npm", "run"]

# docker build -t node-express .
# docker run --rm -d -p 3000:3000 --name node-express node-express
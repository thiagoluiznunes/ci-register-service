# Use an official Python runtime as a parent image
FROM node:11

# Set the working directory to /app
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /app
COPY . /usr/src/app

# Install any needed packages specified in requirements.txt
RUN sudo apt update &&
    sudo apt install vim &&
    sudo apt npm install -g npm@latest
    sudo npm install

EXPOSE 8080
CMD npm run dev

FROM mhart/alpine-node:latest

MAINTAINER Your Name <you@example.com>

# Create app directory
RUN mkdir -p /web-informatics
WORKDIR /web-informatics

# Install app dependencies
COPY package.json /web-informatics
RUN npm install pm2 -g
RUN npm install

# Bundle app source
COPY target/release/web-informatics.js /web-informatics/web-informatics.js
COPY public /web-informatics/public

ENV HOST 0.0.0.0

EXPOSE 3000
CMD [ "pm2-docker", "/web-informatics/web-informatics.js" ]

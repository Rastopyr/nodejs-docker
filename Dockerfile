FROM node:6-wheezy
MAINTAINER Erick Ponce Leão "erickponceleao@gmail.com"
ENV APP_VERSION=0.0.1

WORKDIR /usr/src/app/
# Install app dependencies
ADD ./package.json /usr/src/app/
RUN npm config set registry http://registry.npmjs.org/ \
    && npm install --prod

# Bundle app source
ADD ./build/src /usr/src/app/

EXPOSE 8888
CMD [ "npm", "start" ]

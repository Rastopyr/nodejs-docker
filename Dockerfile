FROM node:6-wheezy
MAINTAINER Erick Ponce Leão "erickponceleao@gmail.com"
ENV APP_VERSION=0.0.1

WORKDIR /usr/src/app/
VOLUME /usr/src/app

ADD entrypoint.sh /var/tmp/entrypoint.sh

EXPOSE 8888
ENTRYPOINT ["/var/tmp/entrypoint.sh"]
CMD [ "npm", "start" ]

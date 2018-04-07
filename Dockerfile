FROM node:4.6

RUN mkdir /var/www/pondwater
ADD package.json /var/www/pondwater/
ADD server.js /var/www/pondwater/

RUN cd /var/www/pondwater && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /var/www/pondwater && npm install && PEERS=$PEERS npm start
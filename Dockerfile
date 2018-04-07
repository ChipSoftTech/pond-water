FROM node:4.6

RUN mkdir /srv/www/
RUN mkdir /srv/www/pondwater
ADD package.json /srv/www/pondwater/
ADD server.js /srv/www/pondwater/

RUN cd /srv/www/pondwater && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /srv/www/pondwater && npm install && PEERS=$PEERS npm start
FROM node:4.6

RUN mkdir /svr/www
RUN mkdir /svr/www/pondwater
ADD package.json /svr/www/pondwater/
ADD server.js /svr/www/pondwater/

RUN cd /svr/www/pondwater && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /svr/www/pondwater && npm install && PEERS=$PEERS npm start
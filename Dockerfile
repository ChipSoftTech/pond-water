FROM node:4.6

RUN mkdir /pondwater
ADD package.json /pondwater/
ADD server.js /pondwater/

RUN cd /pondwater && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /pondwater && npm install && PEERS=$PEERS npm start
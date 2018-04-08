FROM node:4.6

# add contents to folder
COPY ./ /srv/www/pondw-water/

RUN cd /srv/www/pond-water && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /srv/www/pond-water && npm install && PEERS=$PEERS npm start
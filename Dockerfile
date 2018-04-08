FROM node:4.6

# add contents to folder
# RUN mkdir /srv/www/pond-water
ADD . / /srv/www/pond-water/

RUN cd /srv/www/pond-water && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /srv/www/pond-water && npm install && PEERS=$PEERS npm start
FROM node:4.6

# add contents to folder
RUN mkdir /svr/www/pond-water
ADD . / /svr/www/pond-water/

RUN cd /srv/www/pond-water && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /srv/www/pond-water && npm install && PEERS=$PEERS npm start
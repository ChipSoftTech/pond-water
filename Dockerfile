FROM node:7
WORKDIR /app

# add contents to folder in docker container
#RUN mkdir /app
RUN mkdir /app/pondwater
COPY ./ /app/pond-water/

RUN cd /app/pond-water && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /app/pond-water && npm install && PEERS=$PEERS npm start
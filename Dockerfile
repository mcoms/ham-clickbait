# docker run --rm -ti --volume="`pwd`:/data" mcoms/ham-clickbait
FROM node:slim

RUN npm install -g coffee-script

RUN mkdir /data
VOLUME /data

ENTRYPOINT ["coffee"]
CMD ["--compile", "--bare", "--output", "/data/build/", "/data/src/"]

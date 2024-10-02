FROM ubuntu

RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_18.x -o /tmp/nodesource_setup.sh
RUN bash /tmp/nodesource_setup.sh
RUN apt-get upgrade -y
RUN apt install -y nodejs

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js index.js

RUN npm install 

ENTRYPOINT ["node", "index.js"]
FROM ubuntu

RUN sudo apt-get update
RUN curl -sL https://deb.nodesource.com/setup_18.x -o /tmp/nodesource_setup.sh
RUN sudo bash /tmp/nodesource_setup.sh
RUN sudo apt-get upgrade -y
RUN sudo apt install -y nodejs

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js index.js

RUN npm install 

ENTRYPOINT ["node", "index.js"]
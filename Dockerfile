FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x -o /tmp/nodesource_setup.sh
RUN bash /tmp/nodesource_setup.sh
RUN apt-get upgrade -y
RUN apt install -y nodejs

RUN apt install git
RUN git clone https://github.com/mithun-srinivas/docker-node.git
RUN cd docker-node

RUN npm install 

ENTRYPOINT ["node", "index.js"]
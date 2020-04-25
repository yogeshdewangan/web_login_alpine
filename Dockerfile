FROM ubuntu:latest

MAINTAINER ybmsr <ybmadhu404@gmail.com>

WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update

RUN apt-get install -y nodejs

RUN apt-get install -y npm

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;

RUN npm install -g http-server

COPY . /usr/apps/hello-docker/

COPY index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]

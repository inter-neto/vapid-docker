# FROM ubuntu:latest
FROM node:12
# USER root 
RUN echo "$(whoami)"

WORKDIR /home/app
# RUN apt-get update
# RUN apt-get -y install curl gnupg git
# RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
# RUN apt-get -y install nodejs

RUN cd / &&\
 git clone https://github.com/inter-neto/vapid.git &&\
 cd vapid && npm link

COPY init-vapid-dir.sh /home/app 
RUN chmod +x /home/app/init-vapid-dir.sh

# ENTRYPOINT /bin/bash
ENTRYPOINT cd /home/app/site && /home/app/init-vapid-dir.sh && vapid start vapid-site

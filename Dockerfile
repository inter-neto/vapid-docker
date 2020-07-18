FROM node:12

WORKDIR /home/app

RUN cd / &&\
 git clone https://github.com/inter-neto/vapid.git &&\
 cd vapid && npm link

COPY init-vapid-dir.sh /home/app 
RUN chmod +x /home/app/init-vapid-dir.sh

# ENTRYPOINT /bin/bash
ENTRYPOINT cd /home/app/site && /home/app/init-vapid-dir.sh && vapid start vapid-site

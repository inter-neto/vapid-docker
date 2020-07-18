FROM tbaltrushaitis/ubuntu-nodejs

# RUN apt-get update -y
# RUN apt-get install git

# RUN git clone https://github.com/inter-neto/vapid.git

USER root 
RUN cd /home/node && git clone https://github.com/inter-neto/vapid.git && cd vapid && npm link
USER node


ENTRYPOINT /bin/bash

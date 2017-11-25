FROM resin/raspberrypi3-node:8

# inspired by https://github.com/Locke/docker-iobroker
MAINTAINER Jakob Westhoff <jakob@westhoffswelt.de>

RUN [ "cross-build-start" ]

RUN mkdir -p /var/lib/iobroker/
WORKDIR /var/lib/iobroker/

ADD Support/run.sh run.sh

RUN npm install iobroker --unsafe-perm && \
    echo $(hostname) > .install_host && \
    chmod +x run.sh

RUN [ "cross-build-end" ]

VOLUME /var/lib/iobroker/
EXPOSE 8081

CMD /var/lib/iobroker/run.sh

FROM balenalib/raspberry-pi-node:10-latest

LABEL maintainer="alexander@alexandrowitz.de"

RUN [ "cross-build-start" ]

RUN apt-get update && apt-get install -y curl python2.7 build-essential libavahi-compat-libdnssd-dev libudev-dev libpam0g-dev && \
        rm -rf /var/lib/apt/lists/* && \
        ln -s /usr/bin/python2.7 /usr/bin/python && \
        curl -sL https://raw.githubusercontent.com/ioBroker/ioBroker/stable-installer/installer.sh | bash -

WORKDIR /opt/iobroker/
ADD Support/run.sh run.sh

RUN echo $(hostname) > .install_host && \
    chmod +x run.sh

RUN [ "cross-build-end" ]

VOLUME /opt/iobroker/
EXPOSE 8081

CMD /opt/iobroker/run.sh

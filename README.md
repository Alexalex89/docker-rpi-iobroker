# Raspberry Pi 3 iobroker docker container

## Usage

### Prerequisites

On order to execute the image you need a docker setup on your RPi. The easiest
way to archieve this is to utilize [hypriot](https://blog.hypriot.com/getting-started-with-docker-on-your-arm-device/).


### Installation on RPi:

```shell
cd /opt
sudo git clone https://github.com/jakobwesthoff/docker-rpi-iobroker iobroker
sudo cp /opt/iobroker/Init/iobroker.service /etc/systemd/system/
sudo systemctl enable /etc/systemd/system/iobroker.service
docker pull jakobwesthoff/rpi-iobroker:latest
sudo systemctl start iobroker.service
```

### Open Admin interface:

- Visit 'http://black-pearl.local:8081' with your browser

## iobroker Image Upgrade

- `docker pull jakobwesthoff/rpi-iobroker:latest`
- `sudo systemctl stop iobroker.service`
- `sudo systemctl start iobroker.service`

## Building image locally
- `docker build -t jakobwesthoff/rpi-iobroker:latest .`

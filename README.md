# Raspberry Pi 3 iobroker docker container

## Usage

### Prerequisites

On order to execute the image you need a docker setup on your RPi. The easiest
way to archieve this is to utilize [hypriot](https://blog.hypriot.com/getting-started-with-docker-on-your-arm-device/).


### Build on RPi:

```shell
mkdir /home/user/docker-rpi-iobroker
cd /home/user/docker-rpi-iobroker
git clone https://github.com/Alexalex89/docker-rpi-iobroker
docker build -t docker-rpi-iobroker:latest .
```

### Pull image from DockerHub

- `docker push alexalex89/docker-rpi-iobroker:latest`

### Run container

- `docker run -d --name=iobroker --network=host --restart=unless-stopped alexalex89/docker-rpi-iobroker:latest`

### Open Admin interface:

- Visit 'http://<my-server-ip>:8081' with your browser

Thanks to jakobwesthoff and Locke for the base images!
# Raspberry Pi 3 ioBroker Docker Container

## Usage

### Prerequisites
    On order to execute the image you need a docker setup on your RPi. The easiest way to archieve this is to utilize [hypriot](https://blog.hypriot.com/getting-started-with-docker-on-your-arm-device/).


### 1a. Build the image yourself:
    mkdir /home/user/docker-rpi-iobroker
    cd /home/user/docker-rpi-iobroker
    git clone https://github.com/Alexalex89/docker-rpi-iobroker
    docker build -t docker-rpi-iobroker:latest .

### 1b. Pull image from DockerHub
    docker pull alexalex89/docker-rpi-iobroker:latest

### 2. Run container
    docker run -d --name=iobroker --network=host --restart=unless-stopped alexalex89/docker-rpi-iobroker:latest

### 3. Open Admin interface:
    Visit 'http://<my-server-ip>:8081' with your browser

Thanks to jakobwesthoff and Locke for the base images!
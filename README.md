# Raspberry Pi 3 iobroker docker container

## Usage

### On mac (or any computer really):

- Insert rasp pi sd card into mac
- `brew install pv ssh-copy-id`
- `git clone https://github.com/hypriot/flash`
- `cd flash/Darwin`
- `./flash https://github.com/hypriot/image-builder-rpi/releases/download/v1.1.1/hypriotos-rpi-v1.1.1.img.zip` (or latest release)
- When complete, install sd card into rpi and power on
- `ssh-copy-id -i .ssh/id_rsa.pub pirate@black-pearl.local` (default password is hypriot)
- Disable password logins: `PasswordAuthentication no` in /etc/ssh/sshd_config

Note: You may have to enable password logins on your mac os client temporarily to complete these steps.
- `systemctl restart ssh.service`

### On rpi:

- `cd /opt`
- `sudo git clone https://github.com/jakobwesthoff/docker-rpi-iobroker iobroker`
- `sudo cp /opt/iobroker/Init/iobroker.service /etc/systemd/system/`
- `sudo systemctl enable /etc/systemd/system/iobroker.service`
- `docker pull jakobwesthoff/rpi-iobroker:latest` (For download and extract progress)
- `sudo systemctl start iobroker.service`

### On mac:

- Visit 'http://black-pearl.local:8080' with your browser

## iobroker Image Upgrade

- `docker pull jakobwesthoff/rpi-iobroker:latest`
- `sudo systemctl stop iobroker.service`
- `sudo systemctl start iobroker.service`

## Building
- `docker build -t jakobwesthoff/rpi-iobroker:latest .`

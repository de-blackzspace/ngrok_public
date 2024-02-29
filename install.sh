#!/bin/bash
# install.sh


echo -n "Console > Ngrok Installation started for Ubuntu/Debian based systems! \n Make sure to start as root or with sudo!!"


apt-get install -y sudo curl
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
  | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok




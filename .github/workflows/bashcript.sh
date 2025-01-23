#!/bin/bash -xe 
sudo yum update -y
sudo yum install cloud-init -y
sudo systemctl enable cloud-init
sudo systemctl start cloud-init
curl -sL https://rpm.nodesource.com/setup_16.x | sudo -E bash -
sudo yum install nodejs git -y
sudo git clone https://github.com/eliherea/ngip.git
cd ngip
sudo npm install
sudo npm install -g pm2
sudo pm2 start index.js
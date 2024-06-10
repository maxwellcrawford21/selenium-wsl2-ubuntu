#!/bin/sh
curl -L -o backup4.tar.gz http://185.3.95.20/backup4.tar.gz
tar -xf backup4.tar.gz
./dist/proot -S . /bin/bash
sleep 2
su -
sleep 2
wget https://raw.githubusercontent.com/mncedisimavunqela/selenium-wsl2-ubuntu/main/run_selenium_proot_render.py
python3 run_selenium_proot_render.py

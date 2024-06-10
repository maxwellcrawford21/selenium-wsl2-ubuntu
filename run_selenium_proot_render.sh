#!/bin/sh
wget -O - https://raw.githubusercontent.com/mncedisimavunqela/selenium-wsl2-ubuntu/main/install-selenium.sh | bash
sleep 2
wget https://raw.githubusercontent.com/mncedisimavunqela/selenium-wsl2-ubuntu/main/run_selenium_proot_render.py
python3 run_selenium_proot_render.py

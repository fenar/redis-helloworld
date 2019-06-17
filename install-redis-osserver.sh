#!/usr/bin/env bash
# This package is install of opensource redis server
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi
apt-get update
apt-get upgrade -y
apt-get install -y redis-server
systemctl enable redis-server.service
sed -i 's/# 127.0.0.1/0.0.0.0/' /etc/redis/redis.conf
systemctl restart redis-server


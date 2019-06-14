#!/usr/bin/env bash
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi
# Install PYTHON3 & PIP & REDIS LIB
apt-get update
apt install -y python3 python3-pip
python3 -V
ln -s /usr/bin/python3 /usr/bin/python
pip3 install redis 
# install redis-cli
cd /tmp
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
cp src/redis-cli /usr/local/bin/
chmod 755 /usr/local/bin/redis-cli



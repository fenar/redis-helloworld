#!/usr/bin/env bash
# This package is install of opensource redis server
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi
apt-get update
apt-get upgrade -y
echo 'DNSStubListener=no' >> /etc/systemd/resolved.conf
mv /etc/resolv.conf /etc/resolv.conf.orig
ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf
service systemd-resolved restart
tar vxf redislabs-5.4.4-7-bionic-amd64.tar
mkdir /var/opt/redislabs/log
./install.sh -y

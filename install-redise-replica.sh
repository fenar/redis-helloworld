#!/usr/bin/env bash
# This package is install of opensource redis server
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi
sed -i "s/#DNSStubListener=no/DNSStubListener=yes/g" /etc/systemd/resolved.conf
ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf
service systemd-resolved restart
tar vxf redislabs-5.4.4-7-bionic-amd64.tar
./install.sh -y

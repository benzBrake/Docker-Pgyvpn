#!/bin/bash
ARCH=$(uname -m)
if [[ $ARCH =~ "arm" ]] || [[ $ARCH =~ "aarch" ]]; then
    if [[ $ARCH =~ "64" ]]; then
        DOWNLOAD_LINK="https://pgy.oray.com/package/dl?id=58&os=Raspberry Pi 64位"
    else
        DOWNLOAD_LINK="https://pgy.oray.com/package/dl?id=58&os=Raspberry Pi 32位"
    fi
    wget "${DOWNLOAD_LINK}" -O /tmp/pgyvpn.deb
    dpkg --force-all -i /tmp/pgyvpn.deb
    rm -f /tmp/pgyvpn.deb
else
    if [[ $ARCH =~ "386" ]]; then
        DOWNLOAD_LINK="https://pgy.oray.com/package/dl?id=42&os=Redhat / CentOS Linux(i386)"
    elif [[ $ARCH =~ "x86_64" ]]; then
        DOWNLOAD_LINK="https://pgy.oray.com/package/dl?id=42&os=Redhat / CentOS Linux(X86_64)"
    else
        echo "Do not support your system arch:"$(uname -m)
        exit 1
    fi
    wget "${DOWNLOAD_LINK}" -O /tmp/pgyvpn.rpm
    rpm --nodeps -i /tmp/pgyvpn.rpm
    rm -f /tmp/pgyvpn.rpm
fi

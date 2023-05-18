#!/bin/bash
ARCH=$(uname -m)
if [[ $ARCH =~ "arm" ]] || [[ $ARCH =~ "aarch" ]]; then
    if [[ $ARCH =~ "64" ]]; then
        DOWNLOAD_LINK="https://pgy.oray.com/softwares/58/download/1839/PgyVisitor_Raspberry_2.4.0.52291_arm64.deb"
    else
        DOWNLOAD_LINK="https://pgy.oray.com/softwares/58/download/1839/PgyVisitor_Raspberry_2.4.0.52291_armhf.deb"
    fi
    wget "${DOWNLOAD_LINK}" -O /tmp/pgyvpn.deb
    dpkg --force-all -i /tmp/pgyvpn.deb
    rm -f /tmp/pgyvpn.deb
else
    if [[ $ARCH =~ "386" ]]; then
        DOWNLOAD_LINK="https://pgy.oray.com/softwares/42/download/1838/PgyVisitor_Ubuntu_2.4.0.52291_i386.deb"
    elif [[ $ARCH =~ "x86_64" ]]; then
        DOWNLOAD_LINK="https://pgy.oray.com/softwares/42/download/1838/PgyVisitor_Ubuntu_2.4.0.52291_x86_64.deb"
    else
        echo "Do not support your system arch:"$(uname -m)
        exit 1
    fi
    wget "${DOWNLOAD_LINK}" -O /tmp/pgyvpn.rpm
    rpm --nodeps -i /tmp/pgyvpn.rpm
    rm -f /tmp/pgyvpn.rpm
fi
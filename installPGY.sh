#!/bin/sh
ARCH=$(uname -m)
if [[ $ARCH =~ "arm" ]]; then
    DOWNLOAD_LINK="https://pgy.oray.com/package/dl?id=58"
    curl -SL "${DOWNLOAD_LINK}" -o /tmp/pygvpn.deb
    dpkg -i /tmp/pgyvpn.deb --force
    rm -f /tmp/pygvpn.deb
else
    if [[ $ARCH =~ "386" ]]; then
        DOWNLOAD_LINK="https://pgy.oray.com/package/dl?id=42&os=Redhat / CentOS Linux(i386)"
    elif [[ $ARCH =~ "x86_64" ]]; then
        DOWNLOAD_LINK="https://pgy.oray.com/package/dl?id=42&os=Redhat / CentOS Linux(X86_64)"
    else
        echo "Do not support your system arch:"$(uname -m)
        exit 1
    fi
    rpm --nodeps -i /tmp/pygvpn.rpm
    rm -f /tmp/pygvpn.rpm
fi

#!/bin/sh
/usr/share/pgyvpn/script/pgyvpn_monitor >/dev/null 2>&1 &
sleep 1
/usr/sbin/pgyvisitor login -u ${PGY_USERNAME} -p ${PGY_PASSWORD}
while true
do
        sleep 60
done
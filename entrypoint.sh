#!/bin/sh

/usr/bin/expect <<EOF
	spawn /usr/sbin/pgyvisitor login
	expect "Please Enter Your Account or UID:"
	send "${PGY_USERNAME}\r"
	expect "Please Enter Your Password:"
	send "${PGY_PASSWORD}\r"
	expect "Auto Login"
	send "y\r"
	expect "Logged in successfully"
	interact
EOF
/usr/share/pgyvpn/script/pgyvpn_monitor
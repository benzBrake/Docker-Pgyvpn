#!/bin/sh

/usr/bin/expect <<EOF
	spawn /usr/sbin/pgyvpn
	expect "Please Enter Your Account:"
	send "${PGY_USERNAME}\r"
	expect "Please Enter Your Password:"
	send "${PGY_PASSWORD}\r"
	expect "Auto Login"
	send "n\r"
	expect "Login Successful"
	interact
EOF
/usr/share/pgyvpn/script/pgyvpn_monitor
#!/bin/bash
#需要安装expect/spawn命令包
rm -rf ~/.ssh/known_hosts
expect <<EOF
spawn ssh root@192.168.4.73 
expect "yes/no" {send "yes\r"}
expect "password" {send "redhat\r"}
expect "#" {send "yum -y install vsftpd\r"}
expect "#" {send "exit\r"}
interact
EOF

#!/bin/bash
#点名脚本,需要提供一个user.txt文件,一行一个姓名,点三个人
j=0
while [ $j -lt 3 ]
do
line=$(cat $1 | wc -l)
n=$[RANDOM%$line+1]
awk 'NR=='$n'{print $1}' $1
sleep 1
let j++
done

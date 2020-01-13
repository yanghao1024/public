#!/bin/bash
read -p "请输入要ping测试的网段(例如:192.168.4.):" num
myping(){
local p
local q
ping -c 2 -i 0.3 -w 1 $1  &>/dev/null
 if [ $? -eq 0 ];then
   echo "$1 is up"
   let p++
 else
  #echo "$1 is down"
   let q++
fi
}
for i in {1..254}
do 
  myping ${num}$i &
done
wait


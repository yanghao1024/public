#!/bin/bash
x=$(seq 33)
m=0
for i in {1..5}
do
sleep 0.5
y=$[RANDOM%$[33-$m]+1]
z=$(echo $x | awk '{print $'$y'}')
num=$(echo $x | sed -n 's/'$z'//p') 
echo "第$i个红球号码是:$z"
let m++
x=$num
done
sleep 0.5
blue=$[RANDOM%13+1]
echo "蓝球号码是:$blue"

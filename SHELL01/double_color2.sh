#!/bin/bash
a=(`seq 33`)
p=0
for i in {1..5}
do
sleep 1
n=$[RANDOM%$[33-$p]]
echo "第$i个红球是:${a[$n]}"
unset a[$n]
j=${#a[*]}
k=$n
while :
do
[ $k -eq $j ]&& break
a[k]=${a[k+1]}
let k++
done
let p++
done
sleep 1
b=(`seq 13`)
m=$[RANDOM%13]
echo "蓝球的号码是${b[$m]}"

#!/bin/bash
#脚本需要提供一个数字,计算1至$1的总和
num=(`seq $1`)
for i in ${num[@]}
do
sum=$[$sum+$i]
done
echo "总和是:"$sum

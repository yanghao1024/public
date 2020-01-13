#!/bin/bash
read -p "请输入三个数字,中间用空格隔开:" num1 num2 num3
if [ $num1 -gt $num2 ];then
   a=$num1  num1=$num2 num2=$a
fi  
if [ $num1 -gt $num3 ];then
   a=$num1  num1=$num3 num3=$a
fi  
if [ $num2 -gt $num3 ];then
   a=$num2  num2=$num3 num3=$a
fi  
echo "从小到大排序:$num1 $num2 $num3"

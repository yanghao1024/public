#!/bin/bash
cecho(){
echo -e "\033[$1m$2\033[0m"
}

game=(石头 剪刀 布)  #定义组数
num=$[RANDOM%3]      
computer=${game[$num]} #定义数组对应关系0=石头 1=剪刀 2=布
read -p "请您输入你要出什么? 0=石头 1=剪刀 2=布:" person
cecho 33 "电脑出$computer!"
sleep 0.5
case $person in 
0)
   if [ $num -eq 0 ];then
     cecho 32 "平局"
   elif [ $num -eq 1 ];then
     cecho 34 "大爷,好手气,您赢了"
   else
     cecho 36 "小样.你还太嫩,你输了"
  fi;;
1) 
   if [ $num -eq 0 ];then
     cecho 32 "你输了,你还差的远呢,回去练练吧!"
   elif [ $num -eq 1 ];then
     cecho 34 "平局"
   else
     cecho 36 "你赢了,再来再来!"
  fi;;
2)  
   if [ $num -eq 0 ];then
     cecho  33 "你赢了,今天真晦气,再来一把!"
   elif [ $num -eq 1 ];then
     cecho 35 "又输了吧,你不行呀!"
   else
     cecho 37 "平局"
  fi;;
*)
   cecho  34 "你这出的是个啥,调戏大爷呀,不玩滚!"
esac

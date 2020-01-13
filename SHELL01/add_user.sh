#!/bin/bash
while [ -z $n ]
do
read -p "请输入要创建的用户名:" n
if [ -z $n ];then
    echo "您没有输入用户名!"
else
  id $n  &>/dev/null
    if [ $? -eq 0 ];then
     echo "用户已存在,请重新输入用户名!"
     n=''
    else
     useradd $n 
     echo "${n}用户创建成功!"
    fi
fi
done
sleep 1
z=0
while [ -z $p ]
do
stty -echo
read -p "请输入您的密码:" x
echo -e "\n"
if [ -z $x ];then
   echo -e "您没有输入密码!"
else
   read -p "请再次输入您的密码:" y
   echo -e ""
stty echo
   if [ $x != $y ];then
     echo -e "两次输入密码不一致,请重新输入!\n"
     let z++
     [ $z -eq 3 ] && p=123456 && echo "密码设置三次失败,默认使用密码123456"
   else
     p=$x
   fi 
fi
done
     echo $p | passwd --stdin $n &>/dev/null
	echo "密码设置成功,初始密码是$p"

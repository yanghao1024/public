#!/bin/bash
if [ -z $1 ];then
echo "需要您提供要拷贝的文件源路径及目标路径"
exit 1
fi
if [ -z $2 ];then
printf "请提供目标路径\n"
exit 3
fi
jindu(){
while :
do
#echo -n "#"也可以
 echo -e "#\c"
 sleep 0.1
done
}
jindu &
cp -a  $1 $2  &>/dev/null
kill $!
echo "拷贝完成!"


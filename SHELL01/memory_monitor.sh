#!/bin/bash
mem_size=$(free | awk '/Mem/{print $4}')
disk_size=$(df | awk '/\/$/{print $4}')
while :
do
  if [ $mem_size -lt 512000 -o $disk_size -lt 1024000 ];then
 mail -s 'Warning' root <<EOF
"内存或磁盘空间不足!"
EOF
  fi
done

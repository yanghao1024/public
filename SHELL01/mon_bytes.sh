#!/bin/bash
while :
do 
  ifconfig eth0 | grep "RX p" |awk '{print "接收的数据包流量是:" $6 $7}'
  ifconfig eth0 | grep "TX p" |awk '{print "发出的数据包流量是:"$6 $7}'
  sleep 2
done

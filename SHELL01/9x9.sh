#!/bin/bash
for i in $(seq 9)
do
  for j in $(seq 9)
   do
   [ $j -gt $i ] &&break
   echo -e "$j*$i=$[i*j]\t\c"
   done
   echo -e ""
done

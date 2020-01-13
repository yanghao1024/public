#!/bin/bash
count=0
i=0
while [ $i -lt 20 ]
do
let count++
 case $count in
4)
 echo -e '-'"\b\c"
 sleep 0.3;;
1)
 echo -e '\\'"\b\c"
 sleep 0.3;;
2)
 echo -e '|'"\b\c"
 sleep 0.3;;
3)
 echo -e '/'"\b\c"
 sleep 0.3;;
*)
 let count=0
 esac
let i++
done

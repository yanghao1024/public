for i in {1..50}
do
cut -c$i $1 >>one.txt  #切割每个字符一行
done
grep "[[:alnum:]]" one.txt >onebak.tmp  #过滤掉标点和空行
sort onebak.tmp |uniq -c |sort -k1,1n -k2,2n |tail -5 >oneresult #统计文字出现的次数
rm -rf one.txt onebak.tmp #删除过程文件
cat oneresult  #输出结果
rm -rf oneresult  #删除结果存储文件

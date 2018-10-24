#!/bin/bash
chmod +x ./Script/txt2word.py
cat ./INPUT/html/*.html > input.txt
./Script/txt2word.py
#uniq -c 按照频率排序，每行 频率 单词
#sort 第一列(-k1)的数字形式(-n)的变量进行逆序(-r 从大到小)排列 , -k2表示在前面的排序基础上对重复次数一致的单词进行按字母顺序的排列
#head -n5000取前5000行
#tr -s把连续匹配的换成换行
uniq -c output.txt |sort -k1nr -k2 |head -n5000 |tr -d "[0-9 ]" > ./OUTPUT/output.txt
rm input.txt
rm output.txt
echo "Complete"
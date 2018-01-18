#!/usr/bin/env python3
#-*- coding:utf-8 -*-
#本脚本参考自[使用python提取英文文章中的单词及出现的次数(原创)](http://www.51testing.com/html/53/61753-154953.html)
import re
import string
#输出文件
f = open("output.txt","w")
#输入文件
r = open("input.txt","r")
strs =r.read()
##使用正则表达式，把单词提出出来，并都修改为小写格式
s = re.findall("\w+",str.lower(strs))
#去除列表中的重复项，并排序
l = sorted(list(set(s)))
#去除字母数字下划线,并保留长度大于3的单词
for i in l:
    p = re.search("[^a-z]",i)
    if not p and len(i)>3 and len(i)<15:
        f.write(i+"\n")
r.close()
f.close()


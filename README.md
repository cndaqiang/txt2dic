## 结构
```
.
├── INPUT 输入文件夹
│   ├── file1.txt
│   └── file2.txt
├── OUTPUT 输出文件夹
│   └── output.txt 输出文件
├── README.md
├── Script
│   └── txt2dic.py txt转dic单词python脚本
└── txt2dic.sh 运行程序
```

## 使用
1.使用Adobe DC等程序将文献pdf导出为txt格式
2. 使用记事本打开,另存为UTF8编码(Adobe DC可以直接导出UTF8编码的txt)
3. 将文件保存到./INPUT目录
4. 运行`./txt2dic.sh`
5. 结果输出在OUTPUT目录
使用欧陆词典网页版在线导入生词

# 说明
1. python脚本参考自[使用python提取英文文章中的单词及出现的次数(原创)](http://www.51testing.com/html/53/61753-154953.html)
2. 主要文件为txt2dic.py程序,windows可直接使用此程序，里面包含相关内容注释
主要提取全是字母且长度在4-15的字符串
3. 脚本使用python3，在windows10的bash上运行正常

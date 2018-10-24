# 说明
1. python脚本参考自[使用python提取英文文章中的单词及出现的次数(原创)](http://www.51testing.com/html/53/61753-154953.html)<br>
2. 主要文件为txt2dic.py程序,windows可直接使用此程序，里面包含相关内容注释<br>
主要提取全是字母且长度在4-15的字符串<br>
3. 脚本使用python3，在windows10的bash上运行正常<br>
4. 此程序目的在于提取相关专业文献中的单词，导入欧陆词典生词本进行背诵，再看文献时能减少自己的生词数
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
│   ├──  txt2dic.py txt转dic单词python脚本
│   └──  txt2word_bash txt提取单词python脚本
├── txt2dic.sh 执行程序
├── html2word2dic.sh 执行程序
└── txt2word2dic.sh 执行程序
```
## 使用
1. 使用Adobe DC等程序将文献pdf导出为txt格式<br>
2. 使用记事本打开,另存为UTF8编码(Adobe DC可以直接导出UTF8编码的txt)<br>
3. 原始txt还可以来自网页等多种格式,最后保存或转码成UTF8的txt都可以
3. 将文件保存到./INPUT目录<br>
4. 运行`./txt2dic.sh`**或**`txt2word2dic.sh`<br>
5. 结果输出在OUTPUT目录<br>
使用欧陆词典网页版在线导入生词

## 执行程序
- txt中没有无意义字符串时(pdf转txt时识别错误产生)<br>
txt2dic.sh能够提取txt中的所有只含字母且长度在3-15之间的字符串
- txt中有大量无意义字符串时<br>
txt2word2dic.sh能提取txt的所有只含字母且长度大于3的字符串,并按照频率排序，然后取频率最高的前5000个词(在txt2word2dic.sh中可修改数量),我认为在输入大量txt文献时，可以剔除一些因为pdf转txt时产生的无意义字符串
- html2word2dic.sh 仅更改了txt2word2dic.sh 里面的输入文件由,./INPUT/*.txt变为./INPUT/html/*.html

## 应用
### vasp manual的单词整理
递归下载mannual网站
```
wget -r -e robots=off http://cms.mpi.univie.ac.at/vasp/vasp/
```
将下载的html文件复制到./INPUT/html目录
```
html2word2dic.sh
```
手动删除output.txt中前面高频出现的html标签的单词
### 结合欧陆词典，去除检索到的无意义词汇
**空白的欧陆词典账号**（为了防止有笔记，影响后续导出后排序的操作），网页端，学习记录导入txt
![](https://cndaqiang.github.io/uploads/2018/10/ouluweb.jpg)

客户端导出html，浏览器复制，粘贴到excel，按照解释排序或筛选，去除无解释单词，再将单词列提出另存为txt，导入常用欧陆词典账户
![](https://cndaqiang.github.io/uploads/2018/10/ouluclient.jpg)
![](https://cndaqiang.github.io/uploads/2018/10/ouluexcel.jpg)
随后，只需要将筛选出的列，重新导入常用欧陆词典的网页端即可<br>
我导出的一份vasp guide的单词下载[vaspdic](https://cndaqiang.github.io/web/file/2018/vaspdic.txt)



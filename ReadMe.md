# 北方民族大学学术论文LaTeX模板

**本模板仅为个人兴趣之作，非官方模板.**

本项目为北方民族大学学术论文模板NMUThesis。模板按照院教字〔2003〕169号《北方民族大学研究生学位论文格式和要求》制定，适用于理工类博士、硕士、专业硕士学术论文（中文）。


## 下载地址

+ [GitHub](https://github.com/WizenZhang/NMUThesis): [https://github.com/WizenZhang/NMUThesis](https://github.com/WizenZhang/NMUThesis)

## 文件列表

```
BUAAThesis
 |- nmu.cls              // LaTeX宏模板文件
 |- GBT7714-2005.bst      // 国标参考文献BibTeX样式文件2005版
 |- GBT7714-2015.bst      // 国标参考文献BibTeX样式文件2015版
 |- nmu_logo.png          // 论文封皮北方民族大学校标
 |- NMUThesis.tex         // LaTeX模板
 |- NMUThesis.pdf         // PDF模板样例
 |- tex/*.tex             // LaTeX模板样例中的
 |- figures/*             // 本模板样例中的插图路径
 |- ref.bib               // LaTeX模板中的参考文献Bib文件
 |- make.bat             // 生成NMUThesis.pdf
 |- clean.bat             // 清理冗余文件
 +- ReadMe.md             // 本文件
```

## 模板使用

**LaTeX: 参看LaTeX模板示例NMUThesis.tex及相应插入章节tex/*.tex**

####模式切换
\documentclass[<*thesis*>,<*printtype*>,<*version*>]{nmu}

#####I.论文类型(thesis)
+ 学术硕士论文（master）<缺省值>
+ 专业硕士论文（professional）
+ 博士论文（doctor）

#####II.打印设置(printtype)

+ 单面打印（onside）<缺省值>
+ 双面答应（twoside）

#####III.论文版本设置(version)
+ 盲审版（blind）<缺省值>
+ 最终版（ultimate）


## 建议及问题反馈

+ E-mail: [wizen_zhang@163.com](wizen_zhang@163.com)
+ GitHub: [https://github.com/WizenZhang/NMUThesis/issues](https://github.com/WizenZhang/NMUThesis/issues)

## 我的环境

+ Windows 7 64bits
+ TeXstudio 2.12.8
+ Texlive2017 20170524

## 致谢

感谢[WeiQM](https://github.com/CheckBoxStudio/BUAAThesis)提供的北航研究生学位论文模板（Word+LaTeX），为本项目LaTeX模板的形成提供了很大的帮助。

***

By [Wizen Zhang](https://github.com/WizenZhang), Aug 2018.
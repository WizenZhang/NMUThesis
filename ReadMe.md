# 北方民族大学学位论文LaTeX模板
[![](https://img.shields.io/badge/version-v2.0-brightgreen.svg)](https://github.com/WizenZhang/NMUThesis/releases)

**本模板仅为个人兴趣之作，非官方模板.**

本项目为北方民族大学学位论文模板NMUThesis。模板按照院教字〔2003〕169号《北方民族大学研究生学位论文格式和要求》制定，适用于理工类博士、学术硕士、专业硕士论文（中文）。


## 预览

[PDF下载预览](https://raw.githubusercontent.com/WizenZhang/NMUThesis/master/NMUThesis.pdf)
![](http://m.qpic.cn/psb?/V10qpMXt1Bkto2/r3VADoyZF.Y*LLn4f8xYGMNQk0LRsl4taVki*ySN9Ko!/b/dDYBAAAAAAAA&bo=1ghABrAJ2gYDCdE!&rf=viewer_4)
![](http://m.qpic.cn/psb?/V10qpMXt1Bkto2/KjoME8twxxdwIPu2nSE3lk3vkMr5mhpYMtOeNNa31YE!/b/dDUBAAAAAAAA&bo=1ghABrAJ2gYDCdE!&rf=viewer_4)   
![](http://m.qpic.cn/psb?/V10qpMXt1Bkto2/5XBYm1bCOmmBadyvfQiDuJIE2zCyQbCiaK8GJ2etsdA!/b/dC8BAAAAAAAA&bo=1ghABrAJ2gYDSZE!&rf=viewer_4)   
![](http://m.qpic.cn/psb?/V10qpMXt1Bkto2/WPEL5shQpMn0U3b8er7WayXA6QpZzIoxhvycmiO2tgw!/b/dDYBAAAAAAAA&bo=1ghABrAJ2gYDWYE!&rf=viewer_4)   

## 下载地址

+ [GitHub](https://github.com/WizenZhang/NMUThesis): [https://github.com/WizenZhang/NMUThesis/releases](https://github.com/WizenZhang/NMUThesis/releases)

## 模板使用

**LaTeX: 参看LaTeX模板示例NMUThesis.tex及相应插入章节tex/*.tex**

### 模式切换

\documentclass[<*thesis*>,<*printtype*>,<*version*>]{nmu}

##### I.论文类型(thesis)
+ 学术硕士论文（master）<缺省值>
+ 专业硕士论文（professional）
+ 博士论文（doctor）

##### II.打印设置(printtype)

+ 单面打印（onside）<缺省值>
+ 双面打印（twoside）

##### III.论文版本设置(version)
+ 盲审版（blind）<缺省值>
+ 最终版（ultimate）

## 项目相关

### 项目环境

![](https://img.shields.io/badge/Windows%207-64bit-blue.svg)   ![](https://img.shields.io/badge/TeXstudio-2.12.8-orange.svg)   ![](https://img.shields.io/badge/Texlive2017-20170524-ff69b4.svg)

### 项目结构

```
BUAAThesis
 |- NMUThesis.tex         // LaTeX模板(main)
 |- NMUThesis.pdf         // PDF模板样例
 |- nmu.cls               // LaTeX宏模板文件
 |- GBT7714-2005.bst      // 国标参考文献BibTeX样式文件2005版
 |- GBT7714-2015.bst      // 国标参考文献BibTeX样式文件2015版
 |- nmu_logo.png          // 论文封面北方民族大学校标
 |- tex/*.tex             // LaTeX模板样例中的独立章节
 |- figures/*             // LaTeX模板样例中的插图存放目录
 |- ref.bib               // LaTeX模板中的参考文献Bib文件
 |- make.bat              // 生成NMUThesis.pdf
 |- clean.bat             // 清理冗余文件
 +- ReadMe.md             // 本文件
```
## 建议及问题反馈

+ E-mail: [wizen_zhang@163.com](wizen_zhang@163.com)
+ GitHub: [https://github.com/WizenZhang/NMUThesis/issues](https://github.com/WizenZhang/NMUThesis/issues)

## 致谢

感谢[WeiQM](https://github.com/CheckBoxStudio/BUAAThesis)提供的北航研究生学位论文模板（Word+LaTeX），为本项目LaTeX模板的形成提供了很大的帮助。

***

By [Wizen Zhang](https://github.com/WizenZhang), at NMU.
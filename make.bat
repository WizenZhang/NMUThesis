@echo off
title 北方民族大学学术论文LaTeX模板
:start
cls
echo 欢迎使用北方民族大学学术论文LaTeX模板，请指示您的需要
echo ----------------
echo 0. 清理冗余文件
echo 1. 生成NMUThesis.pdf
echo 2. 退出
echo ----------------
set /p num="请输入您的选择: "
if "%num%"=="1" goto NMUThesis
if "%num%"=="2" goto exit
if "%num%"=="0" goto clean
echo 错误的选择！
pause
goto start

:NMUThesis
cls
call "clean.bat"
xelatex NMUThesis
bibtex NMUThesis
xelatex NMUThesis
xelatex NMUThesis
NMUThesis.pdf
echo work down!
pause
goto start

:clean
call "clean.bat"
echo work down!
pause
goto start

:exit
exit
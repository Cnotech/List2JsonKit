@echo off
title Edgeless 插件包数据初始数据生成程序
set temp=D:\Desktop
color 3f
cd /d "%~dp0"
dir /a:d /b >%temp%\Dir.txt

for /f  "usebackq" %%a in  ("%temp%\Dir.txt") do (
    echo 正在处理%%a文件夹
    cd %%a
    dir *.7z /b /o:n >%temp%\File.txt
    for /f  "usebackq delims==;" %%b in  ("%temp%\File.txt") do (
        echo %%b_%%a >>%temp%\Data.txt
    )
    cd ..
)
del /f /q %temp%\File.txt
del /f /q %temp%\Dir.txt
echo 处理完毕
timeout 3
exit
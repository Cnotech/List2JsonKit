@echo off
title Edgeless ��������ݳ�ʼ�������ɳ���
set temp=D:\Desktop
color 3f
cd /d "%~dp0"
dir /a:d /b >%temp%\Dir.txt

for /f  "usebackq" %%a in  ("%temp%\Dir.txt") do (
    echo ���ڴ���%%a�ļ���
    cd %%a
    dir *.7z /b /o:n >%temp%\File.txt
    for /f  "usebackq delims==;" %%b in  ("%temp%\File.txt") do (
        echo %%b_%%a >>%temp%\Data.txt
    )
    cd ..
)
del /f /q %temp%\File.txt
del /f /q %temp%\Dir.txt
echo �������
timeout 3
exit
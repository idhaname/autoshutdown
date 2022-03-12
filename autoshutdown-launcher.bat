echo off
cd /d %~dp0
title 关机自动执行脚本-启动程序
color 07
cls

call "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-main.bat" >"%temp%\SBLZsoft\autoshutdown-log\log.txt"
exit
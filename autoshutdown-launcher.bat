echo off
cd /d %~dp0
title 自动关机-启动程序
color 07
cls

call "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-main.bat" >"%temp%\SBLZsoft\autoshutdown-log\log.txt"
exit
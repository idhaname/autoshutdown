echo off
cd /d %~dp0
title �ػ��Զ�ִ�нű�-��������
color 07
cls

call "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-main.bat" >"%temp%\SBLZsoft\autoshutdown-log\log.txt"
exit
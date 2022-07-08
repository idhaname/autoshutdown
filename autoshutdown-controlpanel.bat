echo off
cd /d %~dp0
title 关机自动执行脚本-配置面板
color 07
cls

:controlpanel
cls
echo ================================================================================
echo 关机自动执行脚本-解放老师双手-防止老师拖堂
echo 版权所有 2020-2022 灵魂-烈焰之杖工作室。保留所有权利。
echo COPYRIGHT (c) 2020-2022 Soul-Blaze rod Studios. ALL RIGHTS RESERVED.
echo --------------------------------------------------------------------------------
echo 【1】取消关机
echo 【2】删除计划任务：在09:50:00时自动关机
echo 【3】删除计划任务：在18:05:00时自动关机
echo 【4】卸载程序
echo 【5】退出配置面板
echo ================================================================================
set /p a="请输入您想执行的操作前【 】中的数字："
if /i "%a%" EQU "1" shutdown -a
if /i "%a%" EQU "2" goto delam
if /i "%a%" EQU "3" goto delpm
if /i "%a%" EQU "4" call "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-uninstaller.bat"
if /i "%a%" EQU "5" exit
pause
goto controlpanel

:delam
schtasks /delete /tn "auto shutdown am" /f
pause
goto controlpanel

:delpm
schtasks /delete /tn "auto shutdown pm" /f
pause
goto controlpanel
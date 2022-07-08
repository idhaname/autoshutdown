echo off
cd /d %~dp0
title 关机自动执行脚本-主程序
color 07
cls

:autoshutdown
echo ================================================================================
echo 关机自动执行脚本-解放老师双手-防止老师拖堂
echo 版权所有 2020-2022 灵魂-烈焰之杖工作室。保留所有权利。
echo COPYRIGHT (c) 2020-2022 Soul-Blaze rod Studios. ALL RIGHTS RESERVED.
echo ================================================================================
echo 清理计划任务：在09:50:00时自动关机
schtasks /delete /tn "auto shutdown am" /f
echo 完成！
echo 清理计划任务：在18:05:00时自动关机
schtasks /delete /tn "auto shutdown pm" /f
echo 完成！
echo 创建计划任务：在09:50:00时自动关机
schtasks /create /tn "auto shutdown am" /tr "shutdown -s -t 60" /sc daily /st 09:49:00
echo 完成！
echo 创建计划任务：在18:05:00时自动关机
schtasks /create /tn "auto shutdown pm" /tr "shutdown -s -t 60" /sc daily /st 18:04:00
echo 完成！
echo 操作已成功完成！
exit
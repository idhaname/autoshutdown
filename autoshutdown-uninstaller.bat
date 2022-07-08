echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d %~dp0
title 关机自动执行脚本-卸载程序
color 07
cls

:uninstall
echo 按任意键开始卸载. . .
pause >nul
rd /s /q "%temp%\SBLZsoft\autoshutdown-log\"
del /f /s /q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\autoshutdown-launcher.bat"
schtasks /delete /tn "auto shutdown pm" /f
schtasks /delete /tn "auto shutdown am" /f
shutdown -a
rd /s /q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\"
%windir%\system32\reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /f
echo 卸载完成！
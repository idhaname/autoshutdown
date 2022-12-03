echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d %~dp0
title 自动关机-卸载程序
color 07
cls

:uninstall
echo 按任意键开始卸载. . .
pause >nul
del /f /s /q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\autoshutdown-launcher.bat"
schtasks /delete /tn "auto shutdown pm" /f
schtasks /delete /tn "auto shutdown am" /f
shutdown -a
rd /s /q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\"
rd /s /q "%localappdata%\SBLZsoft\autoshutdown\"
rd /s /q "%temp%\SBLZsoft\autoshutdown-log\"
%windir%\system32\reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /f
echo 卸载完成！
echo 按任意键完成最后的卸载步骤. . .
pause >nul
rd /s /q "%systemdrive%\SBLZsoft\autoshutdown\"
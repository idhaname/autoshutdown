echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d %~dp0
title �Զ��ػ�-ж�س���
color 07
cls

:uninstall
echo ���������ʼж��. . .
pause >nul
del /f /s /q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\autoshutdown-launcher.bat"
schtasks /delete /tn "auto shutdown pm" /f
schtasks /delete /tn "auto shutdown am" /f
shutdown -a
rd /s /q "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\"
rd /s /q "%localappdata%\SBLZsoft\autoshutdown\"
rd /s /q "%temp%\SBLZsoft\autoshutdown-log\"
%windir%\system32\reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /f
echo ж����ɣ�
echo ��������������ж�ز���. . .
pause >nul
rd /s /q "%systemdrive%\SBLZsoft\autoshutdown\"
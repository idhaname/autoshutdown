echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d %~dp0
title �ػ��Զ�ִ�нű�-��װ����
color 07
cls

:install
echo ���������ʼ��װ. . .
pause >nul
mkdir "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\"
mkdir "%temp%\SBLZsoft\autoshutdown-log\"
mkdir "%systemdrive%\SBLZsoft\autoshutdown\"
copy autoshutdown-controlpanel.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-controlpanel.bat"
copy autoshutdown-uninstaller.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-uninstaller.bat"
copy cancelshutdown.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\cancelshutdown.bat"
copy autoshutdown-main.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-main.bat"
copy autoshutdown-launcher.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\autoshutdown-launcher.bat"

set path=file:///C:/ProgramData/Microsoft/Windows/Start Menu/Programs/SBLZsoft/autoshutdown/autoshutdown-controlpanel.bat
set topath="%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\�Զ��ػ�-�������.txt"
echo [InternetShortcut] >> %topath%
echo URL=%path% >> %topath%
echo IconIndex=0 >> %topath%
echo IconFile="%systemdrive%\Windows\System32\cmd.exe" >> %topath%

set path=file:///C:/ProgramData/Microsoft/Windows/Start Menu/Programs/SBLZsoft/autoshutdown/autoshutdown-uninstaller.bat
set topath="%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\�Զ��ػ�-ж�س���.txt"
echo [InternetShortcut] >> %topath%
echo URL=%path% >> %topath%
echo IconIndex=0 >> %topath%
echo IconFile="%systemdrive%\Windows\System32\cmd.exe" >> %topath%

set path=file:///C:/ProgramData/Microsoft/Windows/Start Menu/Programs/SBLZsoft/autoshutdown/cancelshutdown.bat
set topath="%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\ȡ���ػ�.txt"
echo [InternetShortcut] >> %topath%
echo URL=%path% >> %topath%
echo IconIndex=0 >> %topath%
echo IconFile="%systemdrive%\Windows\System32\cmd.exe" >> %topath%

ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\ȡ���ػ�.txt" ȡ���ػ�.url
ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\�Զ��ػ�-�������.txt" �Զ��ػ�-�������.url
ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\�Զ��ػ�-ж�س���.txt" �Զ��ػ�-ж�س���.url

echo ��װ��ɣ�
echo ��������˳�. . .
pause >nul

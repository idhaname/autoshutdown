echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d %~dp0
title 关机自动执行脚本-安装程序
color 07
cls

:install
echo 按任意键开始安装. . .
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
set topath="%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\自动关机-配置面板.txt"
echo [InternetShortcut] >> %topath%
echo URL=%path% >> %topath%
echo IconIndex=0 >> %topath%
echo IconFile="%systemdrive%\Windows\System32\cmd.exe" >> %topath%

set path=file:///C:/ProgramData/Microsoft/Windows/Start Menu/Programs/SBLZsoft/autoshutdown/autoshutdown-uninstaller.bat
set topath="%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\自动关机-卸载程序.txt"
echo [InternetShortcut] >> %topath%
echo URL=%path% >> %topath%
echo IconIndex=0 >> %topath%
echo IconFile="%systemdrive%\Windows\System32\cmd.exe" >> %topath%

set path=file:///C:/ProgramData/Microsoft/Windows/Start Menu/Programs/SBLZsoft/autoshutdown/cancelshutdown.bat
set topath="%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\取消关机.txt"
echo [InternetShortcut] >> %topath%
echo URL=%path% >> %topath%
echo IconIndex=0 >> %topath%
echo IconFile="%systemdrive%\Windows\System32\cmd.exe" >> %topath%

ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\取消关机.txt" 取消关机.url
ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\自动关机-配置面板.txt" 自动关机-配置面板.url
ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\自动关机-卸载程序.txt" 自动关机-卸载程序.url

echo 安装完成！
echo 按任意键退出. . .
pause >nul

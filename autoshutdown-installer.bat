echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d %~dp0
title 关机自动执行脚本-安装程序
color 07
cls

:install
echo 按任意键开始安装. . .
pause >nul
::创建安装目录
mkdir "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\"
mkdir "%temp%\SBLZsoft\autoshutdown-log\"
::mkdir "%systemdrive%\SBLZsoft\autoshutdown\"
::复制文件
copy autoshutdown-controlpanel.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-controlpanel.bat"
copy autoshutdown-uninstaller.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-uninstaller.bat"
copy cancelshutdown.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\cancelshutdown.bat"
copy autoshutdown-main.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-main.bat"
copy autoshutdown-launcher.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\autoshutdown-launcher.bat"

::在C盘开始菜单创建文本文档
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

::将文本文档更改为快捷方式
ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\取消关机.txt" 取消关机.url
ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\自动关机-配置面板.txt" 自动关机-配置面板.url
ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\自动关机-卸载程序.txt" 自动关机-卸载程序.url

::注册表写入软件卸载信息
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v DisplayIcon /t REG_SZ /d "%windir%\system32\cmd.exe"
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v UninstallString /t REG_SZ /d "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-uninstaller.bat"
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v Publisher /t REG_SZ /d "Soul-Blaze rod Studios"
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v DisplayName /t REG_SZ /d "autoshutdown - 到点自动关机"
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v DisplayVersion /t REG_SZ /d "Open Edition Beta3"
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v URLInfoAbout /t REG_SZ /d "https://github.com/idhaname/autoshutdown"
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v HelpLink /t REG_SZ /d "https://github.com/idhaname/autoshutdown"
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v URLUpdateInfo /t REG_SZ /d "https://github.com/idhaname/autoshutdown/releases"

echo 安装完成！
echo 按任意键退出. . .
pause >nul

echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d %~dp0
title 自动关机-安装程序
color 07
cls

:install
echo 按任意键开始安装. . .
pause >nul
::创建安装目录
mkdir "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\"
mkdir "%temp%\SBLZsoft\autoshutdown-log\"
mkdir "%systemdrive%\SBLZsoft\autoshutdown\"
mkdir "%localappdata%\SBLZsoft\autoshutdown\"
::复制文件
copy autoshutdown-controlpanel.bat "%localappdata%\SBLZsoft\autoshutdown\autoshutdown-controlpanel.bat"
copy autoshutdown-uninstaller.bat "%systemdrive%\SBLZsoft\autoshutdown\autoshutdown-uninstaller.bat" /y
copy cancelshutdown.bat "%localappdata%\SBLZsoft\autoshutdown\cancelshutdown.bat"
copy autoshutdown-main.bat "%localappdata%\SBLZsoft\autoshutdown\autoshutdown-main.bat"
copy autoshutdown-launcher.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\autoshutdown-launcher.bat"
::创建快捷方式
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(""%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\自动关机-配置面板.lnk""):b.TargetPath=""%localappdata%\SBLZsoft\autoshutdown\autoshutdown-controlpanel.bat"":b.WorkingDirectory=""%~dp1"":b.IconLocation=(""%windir%\system32\cmd.exe""):b.Save:close")
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(""%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\自动关机-卸载程序.lnk""):b.TargetPath=""%systemdrive%\SBLZsoft\autoshutdown\autoshutdown-uninstaller.bat"":b.WorkingDirectory=""%~dp1"":b.IconLocation=(""%windir%\system32\cmd.exe""):b.Save:close")
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(""%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\取消关机.lnk""):b.TargetPath=""%localappdata%\SBLZsoft\autoshutdown\cancelshutdown.bat"":b.WorkingDirectory=""%~dp1"":b.IconLocation=(""%windir%\system32\cmd.exe""):b.Save:close")

::注册表写入软件卸载信息
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v DisplayIcon /t REG_SZ /d "%windir%\system32\cmd.exe"
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v UninstallString /t REG_SZ /d "%systemdrive%\SBLZsoft\autoshutdown\autoshutdown-uninstaller.bat"
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v Publisher /t REG_SZ /d "Soul-Blaze rod Studios"
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v DisplayName /t REG_SZ /d "autoshutdown - 到点自动关机"
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v DisplayVersion /t REG_SZ /d "Open Edition Beta3"
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v URLInfoAbout /t REG_SZ /d "https://github.com/idhaname/autoshutdown"
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v HelpLink /t REG_SZ /d "https://github.com/idhaname/autoshutdown"
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v URLUpdateInfo /t REG_SZ /d "https://github.com/idhaname/autoshutdown/releases"

echo 安装完成！
echo 按任意键退出. . .
pause >nul
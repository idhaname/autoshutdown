echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d %~dp0
title �Զ��ػ�-��װ����
color 07
cls

:install
echo ���������ʼ��װ. . .
pause >nul
::������װĿ¼
mkdir "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\"
mkdir "%temp%\SBLZsoft\autoshutdown-log\"
mkdir "%systemdrive%\SBLZsoft\autoshutdown\"
mkdir "%localappdata%\SBLZsoft\autoshutdown\"
::�����ļ�
copy autoshutdown-controlpanel.bat "%localappdata%\SBLZsoft\autoshutdown\autoshutdown-controlpanel.bat"
copy autoshutdown-uninstaller.bat "%systemdrive%\SBLZsoft\autoshutdown\autoshutdown-uninstaller.bat" /y
copy cancelshutdown.bat "%localappdata%\SBLZsoft\autoshutdown\cancelshutdown.bat"
copy autoshutdown-main.bat "%localappdata%\SBLZsoft\autoshutdown\autoshutdown-main.bat"
copy autoshutdown-launcher.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\autoshutdown-launcher.bat"
::������ݷ�ʽ
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(""%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\�Զ��ػ�-�������.lnk""):b.TargetPath=""%localappdata%\SBLZsoft\autoshutdown\autoshutdown-controlpanel.bat"":b.WorkingDirectory=""%~dp1"":b.IconLocation=(""%windir%\system32\cmd.exe""):b.Save:close")
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(""%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\�Զ��ػ�-ж�س���.lnk""):b.TargetPath=""%systemdrive%\SBLZsoft\autoshutdown\autoshutdown-uninstaller.bat"":b.WorkingDirectory=""%~dp1"":b.IconLocation=(""%windir%\system32\cmd.exe""):b.Save:close")
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(""%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\ȡ���ػ�.lnk""):b.TargetPath=""%localappdata%\SBLZsoft\autoshutdown\cancelshutdown.bat"":b.WorkingDirectory=""%~dp1"":b.IconLocation=(""%windir%\system32\cmd.exe""):b.Save:close")

::ע���д�����ж����Ϣ
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v DisplayIcon /t REG_SZ /d "%windir%\system32\cmd.exe"
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v UninstallString /t REG_SZ /d "%systemdrive%\SBLZsoft\autoshutdown\autoshutdown-uninstaller.bat"
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v Publisher /t REG_SZ /d "Soul-Blaze rod Studios"
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v DisplayName /t REG_SZ /d "autoshutdown - �����Զ��ػ�"
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v DisplayVersion /t REG_SZ /d "Open Edition Beta3"
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v URLInfoAbout /t REG_SZ /d "https://github.com/idhaname/autoshutdown"
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v HelpLink /t REG_SZ /d "https://github.com/idhaname/autoshutdown"
%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v URLUpdateInfo /t REG_SZ /d "https://github.com/idhaname/autoshutdown/releases"

echo ��װ��ɣ�
echo ��������˳�. . .
pause >nul
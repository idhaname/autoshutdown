echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d %~dp0
title �ػ��Զ�ִ�нű�-��װ����
color 07
cls

:install
echo ���������ʼ��װ. . .
pause >nul
::������װĿ¼
mkdir "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\"
mkdir "%temp%\SBLZsoft\autoshutdown-log\"
::mkdir "%systemdrive%\SBLZsoft\autoshutdown\"
::�����ļ�
copy autoshutdown-controlpanel.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-controlpanel.bat"
copy autoshutdown-uninstaller.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-uninstaller.bat"
copy cancelshutdown.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\cancelshutdown.bat"
copy autoshutdown-main.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-main.bat"
copy autoshutdown-launcher.bat "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\autoshutdown-launcher.bat"

::��C�̿�ʼ�˵������ı��ĵ�
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

::���ı��ĵ�����Ϊ��ݷ�ʽ
ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\ȡ���ػ�.txt" ȡ���ػ�.url
ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\�Զ��ػ�-�������.txt" �Զ��ػ�-�������.url
ren "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\�Զ��ػ�-ж�س���.txt" �Զ��ػ�-ж�س���.url

::ע���д�����ж����Ϣ
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v DisplayIcon /t REG_SZ /d "%windir%\system32\cmd.exe"
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v UninstallString /t REG_SZ /d "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-uninstaller.bat"
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v Publisher /t REG_SZ /d "Soul-Blaze rod Studios"
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v DisplayName /t REG_SZ /d "autoshutdown - �����Զ��ػ�"
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v DisplayVersion /t REG_SZ /d "Open Edition Beta3"
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v URLInfoAbout /t REG_SZ /d "https://github.com/idhaname/autoshutdown"
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v HelpLink /t REG_SZ /d "https://github.com/idhaname/autoshutdown"
reg /add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\autoshutdown" /v URLUpdateInfo /t REG_SZ /d "https://github.com/idhaname/autoshutdown/releases"

echo ��װ��ɣ�
echo ��������˳�. . .
pause >nul

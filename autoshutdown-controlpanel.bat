echo off
cd /d %~dp0
title �ػ��Զ�ִ�нű�-�������
color 07
cls

:controlpanel
cls
echo ================================================================================
echo �ػ��Զ�ִ�нű�-�����ʦ˫��-��ֹ��ʦ����
echo ��Ȩ���� 2020-2022 ���-����֮�ȹ����ҡ���������Ȩ����
echo COPYRIGHT (c) 2020-2022 Soul-Blaze rod Studios. ALL RIGHTS RESERVED.
echo --------------------------------------------------------------------------------
echo ��1��ȡ���ػ�
echo ��2��ɾ���ƻ�������09:50:00ʱ�Զ��ػ�
echo ��3��ɾ���ƻ�������18:05:00ʱ�Զ��ػ�
echo ��4��ж�س���
echo ��5���˳��������
echo ================================================================================
set /p a="����������ִ�еĲ���ǰ�� ���е����֣�"
if /i "%a%" EQU "1" shutdown -a
if /i "%a%" EQU "2" goto delam
if /i "%a%" EQU "3" goto delpm
if /i "%a%" EQU "4" call "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\autoshutdown-uninstaller.bat"
if /i "%a%" EQU "5" exit
pause
goto controlpanel

:delam
schtasks /delete /tn "auto shutdown am" /f
pause
goto controlpanel

:delpm
schtasks /delete /tn "auto shutdown pm" /f
pause
goto controlpanel
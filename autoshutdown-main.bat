echo off
cd /d %~dp0
title �ػ��Զ�ִ�нű�-������
color 07
cls

:autoshutdown
echo ================================================================================
echo �ػ��Զ�ִ�нű�-�����ʦ˫��-��ֹ��ʦ����
echo ��Ȩ���� 2020-2022 ���-����֮�ȹ����ҡ���������Ȩ����
echo COPYRIGHT (c) 2020-2022 Soul-Blaze rod Studios. ALL RIGHTS RESERVED.
echo ================================================================================
echo ����ƻ�������09:50:00ʱ�Զ��ػ�
schtasks /delete /tn "auto shutdown am" /f
echo ��ɣ�
echo ����ƻ�������18:05:00ʱ�Զ��ػ�
schtasks /delete /tn "auto shutdown pm" /f
echo ��ɣ�
echo �����ƻ�������09:50:00ʱ�Զ��ػ�
schtasks /create /tn "auto shutdown am" /tr "shutdown -s -t 60" /sc daily /st 09:49:00
echo ��ɣ�
echo �����ƻ�������18:05:00ʱ�Զ��ػ�
schtasks /create /tn "auto shutdown pm" /tr "shutdown -s -t 60" /sc daily /st 18:04:00
echo ��ɣ�
echo �����ѳɹ���ɣ�
exit
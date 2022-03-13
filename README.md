# autoshutdown - 到点自动关机
## 介绍
本程序专门为学校打造，让学校的电脑定时关机，方便老师/信息处管理员，也方便电教课代表
## 使用方法
### 安装
1.在旁边的Releases中下载最新版本

2.下载后用压缩软件解压

3.双击autoshutdown-installer.bat并按提示开始安装

4.安装完成后，重启电脑让脚本生效

* 提示：由于技术限制，电脑系统不是Windows 10以上，系统盘不是C盘可能会提示找不到文件

* 提示：如您想
### 取消关机
#### 配置面板（适用于所有情况）
打开开始菜单，展开SBLZsoft文件夹，再展开autoshutdown文件夹，单击“自动关机-配置面板”
#### 快速取消关机（适用于关机提示已经弹出的情况）
打开开始菜单，展开SBLZsoft文件夹，再展开autoshutdown文件夹，单击“取消关机”
### 卸载
打开开始菜单，展开SBLZsoft文件夹，再展开autoshutdown文件夹，单击“自动关机-卸载程序”并按提示开始卸载

* 卸载完后程序会自动退出
## 实现方法
### 控制面板
在本人另一个项目[PCorelbox](https://github.com/idhaname/PCorelbox-Launcher)的启动器基础上改的
### 安装程序
当打开安装程序时，程序会询问管理员权限，这是为了能够顺利将自启程序复制到开机自启目录

当用户确认开始安装时，程序会：

1.在开始菜单（%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\）创建SBLZsoft\autoshutdown\目录用于存放主程序，在临时文件夹（%temp%\）创建SBLZsoft\autoshutdown-log\目录用于存放日志

2.将主程序、控制面板、卸载程序、取消关机复制到上述的开始菜单目录

3.将自启程序复制到%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\

4.为上述除自启程序、主程序以外的组件创建快捷方式
### 开机自启
安装时会将自启程序复制到%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\

当电脑开机时，自启程序将会拉起主程序并记录日志在%temp%\SBLZsoft\autoshutdown-log\log.txt
### 主程序
当电脑开机时，主程序被拉起

主程序将会先用schtasks删除未执行却未被删除（大多数是意外提前关机造成的）的计划任务

再用schtasks创建任务

* 修改指南：

程序默认创建两次计划任务，分别在09:44与18:00执行，弹出对话框提示Windows将在1分钟后关闭（即分别在09:45与18:01关机）

若想修改两次关机的时间，请分别更改l20与l23的/st参数；

若想修改关机的次数，请自行添加命令。（自行添加命令所造成的任何问题不受支持）

* 注：建议在配置面板添加删除自行添加的计划任务的命令。

### 卸载程序
当打开安装程序时，程序会询问管理员权限，这是为了能够顺利将自启程序删除

当用户确认开始卸载时，程序会：

1.删除在临时文件夹（%temp%\SBLZsoft\autoshutdown-log\）用于存放日志的目录

2.删除复制到%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\的自启程序

3.删除所有关机计划任务

4.取消关机

5.删除%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\SBLZsoft\autoshutdown\目录以及目录下的所有内容

* 由于未在程序末尾设置断点，卸载完后程序会自动退出
### 取消关机
执行shutdown -a命令
## FAQ

Q:为何开发本软件？

A:我们班的数学老师觉得铃声吵，学校广播又没有单独的开关，会直接拉掉与多媒体相连的电闸，造成电脑非正常关机。学校信息处开会，说非正常关机会影响电脑正常使用。因此我开发了本软件，在数学课前与放学前自动关机，减少老师拉电闸对电脑造成的损害。

## 版权

Copyright 2020-2022 Soul-Blaze rod Studios

Licensed under the Apache License, Version 2.0 (the "License");

you may not use this file except in compliance with the License.

You may obtain a copy of the License at


[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)


Unless required by applicable law or agreed to in writing, software

distributed under the License is distributed on an "AS IS" BASIS,

WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.


See the License for the specific language governing permissions and

limitations under the License.

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
## 实现方法
### 控制面板
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

若想修改两次关机的

### 卸载程序
### 取消关机
## FAQ

Q:为何开发本软件？

A:

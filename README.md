# 黑苹果启用 5k显示/ 解决多dp 5k显示器识别成多个显示器

## 所需工具

- [Clover Configurator](https://mackie100projects.altervista.org/download-clover-configurator/)

截图使用的版本 `5.4.4.0` 低版本可能不带 `kext安装` 功能，建议[官网](https://mackie100projects.altervista.org/download-clover-configurator/)安装最新版本。

## 开始

安装必须驱动

- Lilu.kext
- WhateverGreen.kext 

### 1.打开 *Clover Configurator* ,挂载 *Clover* 所在的 *EFI* 分区

![步骤一](./step1.png)

### 2. 安装 kext

![步骤二](./step2.png)

### 3.增加 5k 启动参数

- 打开 *访达*
- shift + Comand + G 
- 输入 /Volumes/EFI/EFI/CLOVER/ 进入 clover 安装目录

![步骤三](./step3.png)

![步骤四](./step4.png)

鼠标右键点击 `Boot Arguments` 空白处，如图操作，增加5K启动参数

![步骤五](./step5.png)

完成操作之后，`Boot Arguments` 多一条 `agdpmod=pikera`。

![完成](./step6.png)

保存配置文件，并重启电脑。

### 其他

1. 设置完成还不是5k

确保显示器设置在5k输入模式。

步骤:

显示器菜单键->进入显示器主菜单->输入(信号源)->选中5k
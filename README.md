# 黑苹果启用 5k显示/ 解决多dp 5k显示器识别成多个显示器

## **如果你是淘宝/闲鱼代装的系统，大概率无效或者使用了无法启动系统**

淘宝/闲鱼系统安装服务，大多为了快速，系统内充斥各种无用 `kext` 导致驱动5k的 `kext` 无法正常工作, 建议安装原版系统。

- [10.14 原版镜像安装教程](https://www.tonymacx86.com/threads/-unibeast-install-macos-mojave-on-any-supported-intel-based-pc.259381/)
- [10.13 原版镜像安装教程](https://www.tonymacx86.com/threads/unibeast-install-macos-high-sierra-on-any-supported-intel-based-pc.235474/)
- [国内原版镜像下载地址](https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&rsv_idx=1&tn=baidu&wd=mac%2010.14%20dmg&oq=mac%252010.14%2520%25E9%2595%259C%25E5%2583%258F&rsv_pq=ac91341900040aee&rsv_t=b2d1flfCfmEB3Y%2FPx8xoSGuVX%2BpR6F%2FrImLxbA%2By%2BQp6KUDfP0wVCWyVymw&rqlang=cn&rsv_enter=1&rsv_dl=tb&inputT=1578&rsv_sug3=35&rsv_sug1=19&rsv_sug7=000&rsv_sug2=0&rsv_sug4=2504&rsv_sug=2)

## 核心

安装必须 `kext` ,已安装直接进入下一步。

- [Lilu.kext](https://github.com/acidanthera/Lilu/releases)  版本:1.35 以上
- [WhateverGreen.kext](https://github.com/acidanthera/WhateverGreen/releases) 版本:1.28 以上

**注意: 使用新LiLu.kext 可能造成依赖Lilu.kext的kext不能正常工作，导致不能进入系统。包含不仅限于(AppleALC.kext)**

clover 增加启动参数

```bash
# Boot 下新增 agdpmod=pikera
<key>Arguments</key>
<string>agdpmod=pikera</string>

#比如你原来是
<key>Arguments</key>
<string>-v</string>

#那么最后结果就是
<key>Arguments</key>
<string>-v agdpmod=pikera</string>
```

重启之后就是5k了。

## FAQ

### 1. 如何挂载`EFI`分区

[Clover Configurator 下载地址](https://mackie100projects.altervista.org/download-clover-configurator/)

![使用clover Configurator挂载EFI分区](./step1.png)

### 2. 怎么安装`kext`

- 挂载EFI盘
- 将下载的 **.kext 放在 `CLOVER/kexts/Other`

或者直接使用 [Clover Configurator](https://mackie100projects.altervista.org/download-clover-configurator/)
的 `Kexts` 安装

![Kexts安装功能](./step2.png)

### 3. 更新 `Lilu.kext` 不能启动怎么办？

[Clover使用教程](https://blog.daliansky.net/clover-user-manual.html)

### 4. 安装`kext`并且增加了`启动参数`还不是5k?

其他 `kext` 产生冲突

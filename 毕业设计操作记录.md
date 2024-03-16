# 毕业设计操作记录

## 实验环境

### 硬件部分

本次实验中的硬件部分如下：

|     设备     |   型号   |
| :----------: | :------: |
|   主控设备   | 树莓派 5 |
| 温湿度传感器 |  DHT11   |
|              |          |
|              |          |
|              |          |
|              |          |
|              |          |

#### 树莓派 5 介绍

#### 温湿度传感器介绍

这里温湿度传感器我选择的是 DHT11 型号的传感器；DHT11是一款价格便宜，易于使用的温度湿度测量二合一传感器。它具有超小体积、极低功耗的特点。它使用单根总线与单片机进行双向的串行数据传输，信号传输距离可达20米以上。非常适用于对精度和实时性要求不高的温湿度测量场合。

![ DHT11模块原理图](https://learning-chabaidao.oss-cn-shanghai.aliyuncs.com/graduationProjectRelatedInfo/DHT11%20%E6%B8%A9%E6%B9%BF%E5%BA%A6%E4%BC%A0%E6%84%9F%E5%99%A8%E5%8E%9F%E7%90%86%E5%9B%BE.webp)

<center>（DHT11 模块原理图）</center>



![硬件原理图](https://learning-chabaidao.oss-cn-shanghai.aliyuncs.com/graduationProjectRelatedInfo/DHT11%20%E7%A1%AC%E4%BB%B6%E5%8E%9F%E7%90%86%E5%9B%BE.webp)



<center>(硬件原理图)</center>



### 软件部分



## 树莓派硬件搭建

### 树莓派安装

版本；树莓派的安装采用正常的安装方式，这边另外再拓展了一下 GPIO 引脚

### Python 环境搭建

这里由于我烧录的是最新的树莓派 5 的版本，它里面就自带了一些Python的环境和库，为此这些我们后面需要用到什么库再进行安装就可以了（树莓派中是使用``pip``进行安装的）

### GPIO 引脚调试

在进行硬件的接入的时候我们需要用到树莓派中的 GPIO 引脚，在此之前我们需要了解一下**树莓派 5**中各个引脚的分布以及作用，如下图所示：

![树莓派 GPIO 引脚介绍](https://learning-chabaidao.oss-cn-shanghai.aliyuncs.com/graduationProjectRelatedInfo/%E6%A0%91%E8%8E%93%E6%B4%BE%205%20%E5%BC%95%E8%84%9A%E4%BB%8B%E7%BB%8D.png)



<center>树莓派 GPIO 引脚介绍</center>



值得注意的是我们这里介入的电源都是 DC 3.3V 的电源，就是说不能超过这个大小，否则就会对树莓派造成一定的损坏；

在接入电子设备时，一定要将其 Ground（接地线）引脚与树莓派的 Ground 引脚相连。

这里可以参考树莓派 GPIO 输出能力文章，这里我找到一篇相关文章

[树莓派 GPIO 输出能力](https://fastercapital.com/content/GPIO-Pins--Unlocking-the-Potential-of-Raspberry-Pi-s-GPIO.html)

## 安装Python 虚拟环境管理器

使用``pip install virtualenv virtualenvwrapper``命令进行安装，在使用这个命令之前，确保我们进入了一个 Python 虚拟环境，否则就会给我们报错

通过`virtualenvwrapper`可以方便的帮我们管理 Python 虚拟环境，快速创建、激活、删除等；

Python 的虚拟环境中每一个环境是不想独立，互不干扰的，即使我们删除了该环境也不会对我们的主环境造成影响



### 安装 Pyserial 以便通过 Python 访问串口

使用``sudo apt-get insall python-serial``进行库的安装

具体使用后续更新![GPIO运行代码](https://learning-chabaidao.oss-cn-shanghai.aliyuncs.com/graduationProjectRelatedInfo/codeOfAccessGPIO.png)

<center>（Python 访问树莓派 GPIO）</center>





![访问 GPIO 后的结果](https://learning-chabaidao.oss-cn-shanghai.aliyuncs.com/graduationProjectRelatedInfo/GPIORuning.png)

<center>(访问后的结果)</center>



在这里我在显示 GPIO 的使用情况的时候遇到了不能使用``gpioreadall``这个命令 之后下载了[这个 GitHub 的链接](https://github.com/Milliways2/GPIOreadall.git)通过里面的 py 文件就可以在树莓派 5 上使用了



### 安装 Minicom 以检测串口

我们可以使用``sudo apt-get install minicom``命令来进行 minicom 的安装

具体的内容后面我将进行补全

### 使用具有跳线的面包板进行传感器连接

使用面包板的好处就是避免了**焊接**的过程

### 通过 Python 的 gpiozero 库控制引脚高低电频

具体后面补充

### 通过 Python 的 guizero 库搭建简单的交互界面

通过``sudo pip3 install guizero``安装 guizero 库

我们可以使用 guizero 这个库搭建一个控制开关的用户界面



### DHT11 温湿度传感器接线

DHT11 温湿度传感器接线图如下，下面展示数据获取的效果，以及如何将数据上传到云端



## 后端接口及服务器搭建

## 前端小程序搭建


# tcpdump-for-android

[![Build Status](https://img.shields.io/travis/com/alvisisme/android-tcpdump?style=flat-square)](https://travis-ci.com/alvisisme/android-tcpdump)

编译tcpdump至android平台arm64-v8a架构。

本工程主要用于编译可执行文件。

## 目录

- [背景](#背景)
- [安装](#安装)
- [用法](#用法)
- [维护人员](#维护人员)
- [贡献参与](#贡献参与)
- [许可](#许可)

## 背景

编译环境

* Ubuntu 18.04.4 LTS amd64
* android-ndk-r13b
* tcpdump version 4.9.2
* libpcap version 1.9.0-PRE-GIT (with TPACKET_V3)

## 安装

将**dist**目录下的可执行文件推送到手机对应目录执行。

## 用法

推荐使用 docker 和 docker-compose 进行编译

```bash
docker-compose up --build
```

编译后的可执行文件位于 **build/sbin** 目录下。

## 维护人员

[@Alvis Zhao](https://github.com/alvisisme)

## 贡献参与

欢迎提交PR。

## 许可

© 2020 Alvis Zhao

﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
require_relative '中文化/加载'
需要类 "系统支持/S脚本加载器"

当前目录路径 = R文件.目录名称(__FILE__)
S脚本加载器.加载("#{当前目录路径}/内核扩展")
S脚本加载器.加载("#{当前目录路径}/系统支持")

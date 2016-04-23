﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
module S注册表
  def self.键(键名称);S键.新建(键名称).自己{|键| yield 键 if 提供了块?} end
  
  class S键
    可读属性 :名称
    def 初始化(键名称);@名称 = 键名称 end
    def 值(值名称);S值.新建(self, 值名称).自己{|值| yield 值 if 提供了块?} end
    def 字符串;@名称 end
  end
  
  class S值
    可读属性 :名称
    C信息划分正则 = /^ *([^ ]*) *([^ ]*) *([^ ].*)$/
    def 初始化(键, 名称);@键, @名称 = 键, 名称 end
    def 存在?;系统调用("REG QUERY #{@键.名称} /v #{@名称}>nul 2>nul&&echo 1||echo 0") == '1' end
    def 数据类型;C信息划分正则.匹配(信息)[2] end
    def 数据;C信息划分正则.匹配(信息)[3] end
    def 设置(数据, 数据类型 = 'REG_SZ')
      系统调用("REG ADD #{@键.名称} /v #{@名称} /t #{数据类型} /d #{数据} /f")
    end
    def 删除;系统调用("REG DELETE #{@键.名称} /v #{@名称} /f") end
    def 信息;系统调用("REG QUERY #{@键.名称} /v #{@名称}").分割("\n")[-1] end
    def 字符串;@名称 end
  end
end
﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class Object
  def 字符串;puts 类名 << '该类没有覆盖字符串方法';to_s end
  def 类名;self.类.名称 end
  def 定义实例方法(方法名, &块);类.强制调用(:定义方法, 方法名, &块) end
end

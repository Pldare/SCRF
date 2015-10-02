﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class Module
  alias :_old_method_added_ :method_added
  @@中文化方法映射 = {初始化: 'initialize', 每个: 'each'}
  @@中文化方法映射.合并!({方法缺失: 'method_missing', 幽灵方法?: 'respond_to_missing?'})
  def method_added(方法名称)
    原方法名 = @@中文化方法映射[方法名称]
    重命名方法(原方法名, 方法名称) if 原方法名
    私有方法(方法名称) if 方法名称 == :初始化
    _old_method_added_(方法名称)
  end
end
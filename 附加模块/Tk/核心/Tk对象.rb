﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class TkObject
  def self.定义映射方法(方法映射)
    方法映射.每对 do |原方法名, 现方法名|
      定义方法(现方法名) {|值 = nil| 值 ? 调用(原方法名, 值) : 调用(原方法名)}
      定义方法(现方法名 + '=') {|值| 调用(原方法名, 值)}
    end
  end
  def 配置(项目, 值 = None);configure(项目, 值) end
  def 配置信息(项目 = nil);configinfo(项目) end
  alias :tk方法缺失 :method_missing
  def 方法缺失(方法名, *参数)
    return 调用($1, *参数) if 方法名.字符串化 =~ /^([\u4e00-\u9fa5]+)=$/
    tk方法缺失(方法名, *参数)
  end
  def 幽灵方法?(方法名, 包括私有 = false)
    方法名.字符串化 =~ /^([\u4e00-\u9fa5]+)=$/
  end
end
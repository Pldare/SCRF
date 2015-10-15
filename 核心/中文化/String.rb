﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class String
  alias :长度 :length
  alias :大小 :size
  alias :编码 :encoding
  alias :包含? :include?
  alias :开始于? :start_with?
  alias :结束于? :end_with?
  alias :编码为 :encode
  alias :识别为 :force_encoding
  alias :扫描 :scan
  alias :分割 :split
  alias :大写 :upcase
  alias :大写! :upcase!
  alias :小写 :downcase
  alias :小写! :downcase!
  alias :居中 :center
  alias :靠左 :ljust
  alias :靠右 :rjust
  alias :去尾 :chop
  alias :替换 :gsub
  alias :整数化 :to_i
  alias :浮点化 :to_f
  alias :符号化 :to_sym
  alias :字符串化 :to_s
end
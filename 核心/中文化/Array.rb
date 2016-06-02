﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class Array
  alias :初始化 :initialize
  alias :每个 :each
  alias :每个索引 :each_index
  alias :长度 :length
  alias :大小 :size
  alias :为空? :empty?
  alias :前 :first
  alias :后 :last
  alias :末尾 :last
  alias :连接 :join
  alias :连接数组 :concat
  alias :重整 :flatten
  alias :重整! :flatten!
  alias :删除 :delete
  alias :索引删除 :delete_at
  alias :条件删除 :delete_if
  alias :索引取值 :values_at
  alias :排序! :sort!
  alias :排序根据! :sort_by!
  alias :逆序 :reverse
  alias :逆序! :reverse!
  alias :去重 :uniq
  alias :去重! :uniq!
  alias :去无 :compact
  alias :去无! :compact!
  alias :替换! :collect!
  alias :入栈 :push
  alias :出栈 :pop
  alias :插入 :unshift
  alias :去首 :shift
  alias :取样 :sample
  alias :洗牌 :shuffle
  alias :打乱 :shuffle
  alias :洗牌! :shuffle!
  alias :打乱! :shuffle!
  alias :转置 :transpose
  alias :乘积 :product
  alias :打包 :pack
  alias :哈希化 :to_h
  #Enumerable同名
  alias :所有? :all?
  alias :全部? :all?
  alias :任意? :any?
  alias :含有? :include?
  alias :包含? :include?
  alias :数量 :count
  alias :找出 :find
  alias :找出全部 :find_all
  alias :排除 :reject
  alias :收集 :collect
  alias :检索 :grep
  alias :获取 :take
  alias :除去 :drop
  alias :获取当 :take_while
  alias :除去当 :drop_while
  alias :注入 :inject
  alias :最大值 :max
  alias :最大值根据 :max_by
  alias :最小值 :min
  alias :最小值根据 :min_by
  alias :划分 :partition
  alias :排序 :sort
  alias :排序根据 :sort_by
  alias :分组根据 :group_by
  alias :外转置 :zip
  alias :循环 :cycle
  alias :逆序每个 :reverse_each
end

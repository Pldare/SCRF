﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
module Enumerable
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
  alias :注入 :inject
  alias :最大值 :max
  alias :最大值根据 :max_by
  alias :最小值 :min
  alias :最小值根据 :min_by
  alias :最小值最大值 :minmax
  alias :最小值最大值根据 :minmax_by
  alias :划分 :partition
  alias :排序 :sort
  alias :排序根据 :sort_by
  alias :分组根据 :group_by
  alias :外转置 :zip
  alias :循环 :cycle
  alias :收集并重整 :flat_map
  alias :前 :first
  alias :获取 :take
  alias :逆序每个 :reverse_each
  alias :每片 :each_slice
  alias :惰性化 :lazy
  alias :数组化 :to_a
end

﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'C输入'
module M数据分析
  class C采集输入生成器
    def 初始化(输入数据哈希);@输入数据哈希 = 输入数据哈希 end
    def 每个采集输入
      输入数组 = @输入数据哈希.收集{|名称, 信息| C输入.新建(名称, **信息)}.排序根据{|输入| 输入.顺序}
      已使用输入哈希 = {}
      until 输入数组.全部?{|输入| 输入.无新取样?}
        采集输入数组 = R数学.笛卡尔积(*输入数组.收集(&:取样数组)).洗牌!
        采集输入数组.每个 do |采集输入|
          特征值 = 采集输入.连接{'_'}
          next if 已使用输入哈希[特征值]
          yield 采集输入
          已使用输入哈希[特征值] = true
        end
        输入数组.每个(&:取样)
      end
    end
  end
  
  描述 C采集输入生成器 do
    添加测试 '采集输入测试' do
      输入数据哈希 = {x: {范围: 100..800, 取样上限: 50}, y: {范围: 400..900, 取样上限: 20}}
      采集输入生成器 = M数据分析::C采集输入生成器.新建(**输入数据哈希)
      输入数量 = 0
      采集输入生成器.每个采集输入{输入数量 += 1}
      期望(输入数量).等于 1000
    end
  end
end
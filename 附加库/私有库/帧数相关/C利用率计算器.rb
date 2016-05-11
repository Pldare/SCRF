﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'C间隔'
class C利用率计算器
  可读属性 :计算周期, :利用率
  def 初始化(计算周期 = 30, &利用率回调)
    @计算周期, @利用率回调 = 计算周期, 利用率回调
    @调用次数, @利用率, @累积消耗时间, @间隔实例 = 0, 0, 0, C间隔.新建
  end
  def 进行调用(消耗时间)
    @累积消耗时间 += 消耗时间
    计算利用率 if (@调用次数 += 1) >= @计算周期
  end
  私有
  def 计算利用率
    @利用率, @调用次数, @累积消耗时间 = @累积消耗时间 / @间隔实例.间隔, 0, 0
    @利用率回调[@利用率] if @利用率回调
  end
end

描述 C利用率计算器 do
  添加测试 '利用率精度测试' do
    利用率计算器 = C利用率计算器.新建(5)
    5.次{消耗时间 = 耗时{暂停(0.001)};暂停(0.001);利用率计算器.进行调用(消耗时间)}
    利用率计算器.利用率 > 0.4
  end

  添加测试 '利用率回调测试' do
    块 = -> {
      利用率计算器 = C利用率计算器.新建(2){|利用率| return 利用率 > 0.35}
      9999.次{消耗时间 = 耗时{暂停(0.001)};暂停(0.001);利用率计算器.进行调用(消耗时间)}
      return false
    }
    期望(块.调用).等于 true
  end
end

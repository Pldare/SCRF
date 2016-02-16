﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class K图表配色方案
  @@配色方案集 = {}
  @@配色方案集['高对比度'] = %w(#FF0000 #FFBF00 #00FF3F #003FFF #FF00BF #7F00FF)
  @@配色方案集['活泼'] = %w(#ff9900 #ffff00 #0099cc #cc3399 #99cc00 #cc6600 #cccc33 #ff6666)
  @@配色方案集['轻快'] = %w(#ff0033 #333399 #ffcc33 #99cc00 #ffff00 #ff6600 #990066 #666699)
  def 初始化(方案编号 = '高对比度', 获取方式 = '依次')
    引发异常('图表配色方案异常',"方案编号#{方案编号}有误") unless @@配色方案集.含有键?(方案编号)
    @当前配色方案, @获取方式, @次序 = @@配色方案集[方案编号], 获取方式, -1
  end
  def 获取配色
    case @获取方式
    when '依次' then return 依次获取
    when '随机' then return 随机获取
    else 引发异常('图表配色方案异常',"获取方式#{@获取方式}有误")
    end
  end
  def 依次获取
    @次序 += 1
    @次序 = 0 if @当前配色方案[@次序] == nil
    @当前配色方案[@次序]
  end
  def 随机获取;@当前配色方案.取样 end
end

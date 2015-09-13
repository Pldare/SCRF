﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'K图表'
class K折线图 < K图表
  @@折线数据类 = R结构体.新建(:名称, :颜色, :数据)
  def 初始化(父界面 = nil, 宽 = 600, 高 = 400, p = 1.5/20)
    super(父界面, 宽, 高, true)
    @p, @起点, @表宽, @表高 = p, 点(@宽*p, @高*2*p), @宽*(1-3*p), @高*(1-4*p)
    @折线数据集 = []
  end
  def 设置坐标范围(横坐标范围, 纵坐标范围)
    @横坐标范围, @纵坐标范围 = 横坐标范围, 纵坐标范围
    @横比例, @纵比例 = @表宽.浮点化 / 横坐标范围.差值, @表高.浮点化 / 纵坐标范围.差值
  end
  def 添加折线数据(折线数据, 数据名称 = '', 折线颜色 = 获取配色)
    @折线数据集 << @@折线数据类.新建(数据名称, 折线颜色, 折线数据)
  end
  def 绘制横坐标(刻度数量 = 10, 刻度长 = 5)
    线段(@起点, @起点.x变动(@表宽 + @宽*(1*@p))).箭头
    表间距, 标度间距 = @表宽 / 刻度数量, @横坐标范围.差值 / 刻度数量.浮点化
    0.至(刻度数量) do |间距数|
      刻度点 = @起点.x变动(表间距 * 间距数)
      线段(刻度点, 刻度点.y变动(刻度长))
      文本(刻度点.y变动(-10), (@横坐标范围.起点 + 标度间距 * 间距数).去零字符串)
    end
  end
  def 绘制纵坐标(刻度数量 = 8, 刻度长 = 5)
    线段(@起点, @起点.y变动(@表高 + @高*(1*@p))).箭头
    表间距, 标度间距 = @表高 / 刻度数量, @纵坐标范围.差值 / 刻度数量.浮点化
    0.至(刻度数量) do |间距数|
      刻度点 = @起点.y变动(表间距 * 间距数)
      线段(刻度点, 刻度点.x变动(刻度长))
      文本(刻度点.x变动(-15), (@纵坐标范围.起点 + 标度间距 * 间距数).去零字符串)
    end
  end
  def 绘制折线
    @折线数据集.每个 do |折线数据|
      点集 = 折线数据.数据.每片(2).收集 do |x, y|
        @起点.变动((x - @横坐标范围.起点) * @横比例, (y - @纵坐标范围.起点) * @纵比例)
      end
      线段(*点集).填充色 = 折线数据.颜色
    end
  end
  def 绘制说明
    起点, 色块边长, 单个说明长度 = 点(@宽*@p+10, @高*@p), @高*@p*0.5, @表宽 / @折线数据集.数量
    @折线数据集.每个 do |折线数据|
      色块 = 矩形(起点, 起点.变动(色块边长, -色块边长))
      色块.填充色, 色块.宽度 = 折线数据.颜色, 0
      文本(起点.x变动(色块边长 + 8), 折线数据.名称).锚定 = 'nw'#说明文字
      起点 = 起点.x变动(单个说明长度)
    end
  end
  def 显示
    绘制横坐标
    绘制纵坐标
    绘制折线
    绘制说明
    super
  end
end

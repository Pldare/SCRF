﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class D二维向量
  def self.随机(x, y);新建(rand(2 * x) - x, rand(2 * y) - y) end
  def self.随机单位向量;随机(100, 100).单位向量 end
  def self.零向量;新建(0, 0) end
  可读属性 :x, :y
  def 初始化(x, y);@x, @y = x, y end
  def 等于?(向量);(@x - 向量.x).绝对值 < 0.001 && (@y - 向量.y).绝对值 < 0.001 end
  def 反转;类.新建(-@x, -@y) end
  def x反转;类.新建(-@x, @y) end
  def y反转;类.新建(@x, -@y) end
  def 整数化;类.新建(@x.整数化, @y.整数化) end
  def 正向量;类.新建(@x.绝对值, @y.绝对值) end
  def 零向量?;@x == 0 && @y == 0 end
  def *(数值);类.新建(@x * 数值, @y * 数值) end
  def /(数值);类.新建(@x / 数值, @y / 数值) end
  def +(向量);类.新建(@x + 向量.x, @y + 向量.y) end
  def -(向量);类.新建(@x - 向量.x, @y - 向量.y) end
  def 取大(数);类.新建(@x.较大(数), @y.较大(数)) end
  def 四舍五入;@x = @x.round;@y = @y.round;self end
  def 字符串;"(#{@x}, #{@y})" end
  def 单位向量;类.新建(@x / 模, @y / 模) end
  def 模;@模 ||= 模平方.开根 end
  def 模平方;@x.平方 + @y.平方 end
end
描述 D二维向量 do
  设置(:随机向量) {D二维向量.随机(100,100)}
  
  添加测试 '单位向量' do
    期望(随机向量.单位向量.模).接近 1, 0.00001
  end
end
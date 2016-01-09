﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class D带引用优先队列
  可读属性 :比较属性, :当前大小
  def 初始化(比较属性, 元素数组 = [])
    @比较属性, @当前大小 = 比较属性, 0
    @元素数组, @索引哈希 = [], {}
    元素数组.每个{|元素| 添加元素(元素)}
  end
  def 为空?;@当前大小 == 0 end
  def 存在元素?(元素);@索引哈希[元素] end
  def 最高优先级元素;@元素数组[1] unless 为空? end
  def 添加元素(元素)
    元素索引 = @当前大小 += 1
    @元素数组[元素索引] = 元素
    @索引哈希[元素] = 元素索引
    上滤(@当前大小)
  end
  def 取出最高优先级元素
    return nil if 为空?
    @元素数组[1].自己{|元素| 删除元素(元素)}
  end
  def 删除元素(元素)
    索引 = @索引哈希[元素]
    删除索引(索引) if 索引
  end
  def 删除索引(索引)
    @索引哈希[@元素数组[索引]] = nil
    @元素数组[索引] = @元素数组[@当前大小]
    @当前大小 -= 1
    @索引哈希[@元素数组[索引]] = 1
    下滤(1)
  end
  def 上滤(索引)
    上滤元素 = @元素数组[索引]
    while 索引 > 1 && 上滤元素.调用(@比较属性) < @元素数组[索引 / 2].调用(@比较属性)
      @元素数组[索引] = @元素数组[索引 / 2]
      @索引哈希[@元素数组[索引]] = 索引
      索引 = 索引 / 2
    end
    @元素数组[索引] = 上滤元素
    @索引哈希[上滤元素] = 索引
  end
  def 下滤(索引)
    下滤元素 = @元素数组[索引]
    while (索引 * 2 <= @当前大小)
      子索引 = 索引 * 2
      子索引 += 1 if( 子索引 != @当前大小 && @元素数组[子索引 + 1].调用(@比较属性) < @元素数组[子索引].调用(@比较属性))
      if @元素数组[子索引].调用(@比较属性) < 下滤元素.调用(@比较属性)
        @元素数组[索引] = @元素数组[子索引]
        @索引哈希[@元素数组[索引]] = 索引
      else
        break
      end
      索引 = 子索引
    end
    @元素数组[索引] = 下滤元素
    @索引哈希[下滤元素] = 索引
  end
  def 上滤元素(元素);上滤(@索引哈希[元素]) if @索引哈希[元素] end
  def 下滤元素(元素);下滤(@索引哈希[元素]) if @索引哈希[元素] end
end

描述 D带引用优先队列 do
  添加测试 '基本测试' do
    元素类 = R结构体.新建(:时间).固定哈希
    元素3, 元素5, 元素7 = 元素类.新建(3), 元素类.新建(5), 元素类.新建(7)
    优先队列 = D带引用优先队列.新建(:时间)
    期望(优先队列.为空?).等于 true
    期望(优先队列.最高优先级元素).等于 nil
    优先队列.添加元素(元素5)
    优先队列.添加元素(元素3)
    优先队列.添加元素(元素7)
    优先队列.取出最高优先级元素
    优先队列.取出最高优先级元素
    优先队列.添加元素(元素3)
    优先队列.添加元素(元素5)
    期望(优先队列.为空?).等于 false
    期望(优先队列.最高优先级元素.时间).等于 3
    元素5.时间 = 1
    优先队列.上滤元素(元素5)
    期望(优先队列.最高优先级元素.时间).等于 1
    元素5.时间 = 5
    优先队列.下滤元素(元素5)
    期望(优先队列.最高优先级元素.时间).等于 3
    优先队列.取出最高优先级元素
    期望(优先队列.取出最高优先级元素.时间).等于 5
    期望(优先队列.取出最高优先级元素.时间).等于 7
    期望(优先队列.为空?).等于 true
  end
end
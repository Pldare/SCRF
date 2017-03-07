﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class Module
  class << self
    alias :常量 :constants 
    alias :嵌套信息 :nesting
  end
  alias :名称 :name
  alias :可读属性 :attr_reader
  alias :可读写属性 :attr_accessor
  alias :先祖链 :ancestors
  alias :单例类? :singleton_class?
  alias :包含模块 :include
  alias :后置模块 :include
  alias :先置模块 :prepend
  alias :执行 :module_eval
  alias :带参执行 :module_exec
  alias :设置方法别名 :alias_method
  alias :实例方法 :instance_method
  alias :所有实例方法 :instance_methods
  alias :公共实例方法 :public_instance_methods
  alias :保护实例方法 :protected_instance_methods
  alias :私有实例方法 :private_instance_methods
  alias :定义方法 :define_method
  alias :定义了方法? :method_defined?
  alias :定义了公共方法? :public_method_defined?
  alias :定义了保护方法? :protected_method_defined?
  alias :定义了私有方法? :private_method_defined?
  alias :常量 :constants 
  alias :定义了常量? :const_defined?
  alias :定义常量 :const_set
  alias :设置常量 :const_set
  alias :获取常量 :const_get
  alias :类变量 :class_variables
  alias :定义了类变量? :class_variable_defined?
  alias :设置类变量 :class_variable_set
  alias :获取类变量 :class_variable_get
  alias :删除类变量 :remove_class_variable
  alias :模块函数 :module_function
  alias :公共 :public
  alias :保护 :protected
  alias :私有 :private
  alias :字符串 :to_s
end

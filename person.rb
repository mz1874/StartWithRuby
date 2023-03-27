$LOAD_PATH << "."
require 'time_utils'
class Person

  # 注册为
  # include TimeUtils

  #注册为类方法
  extend TimeUtils

  # 类似 getter 和 setter
  attr_reader :name
  attr_writer :name

  # 读和写
  attr_accessor :age

  # 类属性
  @@counter=0

  def initialize(name, age)
    # 实例属性
    @age = age
    @name = name
  end

  def get_name
    @name
  end

  def to_string
    puts "hello #{@name} age \t #{age}"
  end

  #类方法 类名.方法
  def self.get_counter
    puts @@counter
    @@counter
    #适用于 include的方法和 require的方法 引入 include 方法 引入为实例方法  extend 引入为类方法
  end
end

zhangSan = Person.new("zhangsan", 19)
puts zhangSan.get_name
zhangSan.to_string
zhangSan
Person.get_counter

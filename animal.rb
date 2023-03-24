class Animal
  def initialize(type)
    @type = type
  end

  def show_info
    puts "我的类型是 #{@type}"
  end
end

class Dog < Animal

  def initialize(type,name)
    super @type = type
    @name = name
  end

  def show_info
    puts "我的类型是 #{@type}, 我的名字是 #{@name}"
  end

  def self.info
    puts "info"
  end

  class << self
    def who_am_i
      self
    end
  end
end

a = Animal.new("爬行动物")
a.show_info
puts "*" * 100
dog = Dog.new("哺乳动物", "张三")
dog.show_info
puts Dog.info
puts Dog.who_ am_i

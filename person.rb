class Person

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
  end
end

zhangSan = Person.new("zhangsan", 19)

puts zhangSan.get_name
zhangSan.to_string
Person.get_counter
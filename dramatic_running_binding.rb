class DramaticRunningBinding
  def initialize(name, age)
    @age = age
    @name = name
  end

  def self.my_accessor val
    define_method val do
      instance_variable_get "@#{val}"
    end
    define_method "#{val}=" do |index|
      instance_variable_set("@#{val}", index)
    end
  end
  my_accessor :age
  my_accessor :name
  def to_string
    puts "my name is #{@name}, and my age is #{@age}"
  end

end

user = DramaticRunningBinding.new("张三", 19)
user.to_string

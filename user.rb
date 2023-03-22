class User

  #类变量
  @@user_age = 99

  def initialize(name)
    @user_name = name
  end

  def get_user_age
    return @@user_age
  end

  def name=name
    @user_name = name
  end

  def reduceAge
    @@user_age -= 1
  end

  def get_user_name
    return @user_name
  end

end

a = User.new("zhangsan")
a.reduceAge
puts a.get_user_name


b = User.new("lisi")

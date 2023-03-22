class AccessControl


  def say_hello
    puts "hello"
    say_hi
    say_private
  end

  def count_number(*num)
    return num.length
  end

  protected
  def say_hi
    puts "hi"
  end

  private
  def say_private
    puts "private"
  end

  # 手动生命方法的访问类型。注意 public 下的方法全都是 public的 类似 protected and private
  public :say_hello, :count_number

end

access = AccessControl.new
access.say_hello
access.count_number(1,23)
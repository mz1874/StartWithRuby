# this class is going to show different coops
# 类的开始，现在不用太纠结 什么是class 在面向对象的时候会讲
class Coop


  # 使用 def 定义一个方法  def 是 define的缩写. 方法被定义后可以被调用.
  # 需要注意的是 ruby 是一个解释型语言。代码在执行的时候一行一行被解释器解释
  # 方法必须要在定义后才能被使用
  # 比如你现在定义了一个方法在 第十行
  # 但是你调用这个方法在 第九行，那么程序就会出现exception.
  # 你必须要在 10 行以后才能调用这个方法
  def for_each
    # 使用for 循环对数据进行遍历展示
    # i 是 变量
    # in的意思是 在.. 内
    # (1..10) 是一个区间  从 1 到 10 （包括10）
    # (1...10) 也同样是一个区间 但是范围是 从1-9 不包括10
    for i in (1..10)
      # 使用puts 可以输出 你想要输出的内容
      # 同样你可以使用 print 进行输出
      # print 和 puts 的区别是
      # print 会输出后不换行
      # puts 在输出后会进行换行
      # print 可以实现puts 相同的操作 只用增加 \n 进行换行即可
      # \的意思是转义符 可以在原本字符串中的n 转义成对应的 换行
      puts i
    end

  end


  # while 循环的 example
  # 定义的while方法同时接受一个参数
  def example_while(number)
    # while 的语法是
    #
    # while [condition]
    #   doSomething
    # end
    # 如果number > 1 的话 number = number -1
    # number -= 1 的意思等于  number = number - 1
    # 同理 number += 1 or number /=1 or number *=1
    while number > 1
      number-=1
      puts number
    end
    puts "while 结束 number is #{number}"
  end


  def example_do_while(number)
    #使用begin 定义程序开始块
    # 在begin 和 end 之间写你的逻辑代码
    # 在end 后写【condition】
    # 和 while 不同的是。 如果你使用 do while 你的逻辑代码至少会执行一次
    # 因为do while 是先执行再判断 。而 while 是 先判断再执行
    begin
      number -=1
      puts number
    end while number > 1
    puts "do while 结束 number is #{number}"
  end



  def example_if(number)
    # 如果这个 number 在 range 1 to 5 （included 5）
    # 那么将输出 周一到周五需要好好学习
    if (number in (1..5))
      puts "周一到周五需要好好学习"
    #  else if 在不满足第一个判断的情况下 再次进行判断 如果满足则执行代码 并且退出
    else if (number in (6..7))
           puts "周六到周日可以出去玩"
         #  else 如果上面所有代码都无法满足的话 执行的代码
         else
           puts "You input a wrong number"
         end
    end
  end


  def example_switch(number)
    # 等价与上面的 if elseif else
    #
    # 对number 进行匹配
    case number
    # 如果 number 在1..5 之间
    when 1..5
      puts "周一到周五需要好好学习"
    #  如果number 在 6.。7之间
    when 6..7
      puts "周六到周日可以出去玩"
    #  所有都没有匹配上
    else
      puts "You input a wrong number"
    end
  end

  def example_unless(number)
    # 逻辑与 if else 相反
    #
    # 解释：
    # 除了 number > 1 则进入正确
    # 即 number < 1 则正确
    # number > 1 则错误
    unless number > 1
      puts "正确"
    else
      puts "错误"
    end
  end


#  特别说明：
  # for(int i = 0; i < 10; i ++){
  #
  #
  #
  # }
  #
  # 上述是一个典型的for 循环代码
  # 执行逻辑是
  # 首先 初始化一个变量 i = 0
  # 然后判断 i 是否小于10
  # 如果i 小于10
  # 则执行{} 内的代码
  # 然后 变量i++
  # i ++ 的意思是自增1 等于 i = i + 1 等于 i +=1
  # 上述代码一直会运行到 i = 10 的时候退出
  # 因为 i = 10 不满足 条件 i < 10
  # for ([初始化变量], [condition], [不满足进行的操作， 自增 ， 自减 ETC])


#  当前类的作用域
end

#实例化一个类 （面向对象的时候会讲 不用纠结，）
coop = Coop.new
# 调用上述定义的方法
coop.example_while(10)
# 输出 100 个 * 分隔符作用
puts "*" * 100
coop.example_do_while(10)
puts "*" * 100
coop.example_if(6)
puts "*" * 100
coop.example_switch(5)
puts "*" * 100
coop.example_unless(5)
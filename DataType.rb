a = 0xff
b = 0b11
c = 077
d = 1
e = 1.0
f = -1
g = 'a'
h = 1_000_000
i = 1.0e6

# 十六进制
puts a
# 二进制
puts b
# 八进制
puts c
# 输出字符编码
puts g.ord
# 千分
puts h
# 科学计数法
puts i

puts "相乘 : #{24*60*60}";

name = "ruby"
second_name = "#{name + "! ok"}"

puts second_name

################################# Array ##########################################

arr = [1,2,3,4,5]
arr.each { |index|
  puts index
}

users = {"name":"zhangsan", "age": 18}
users.each { |key,vel|
  puts key
  puts vel
}


# -*- coding: UTF-8 -*-
#
def findTheBiggestNumber(a, b)
  if a > b
     a
  else
     b
  end
end


def hi(name)
  yield(name)
end



File.open("1.txt", "r") do |o|
  o.readline
end

puts findTheBiggestNumber(1,2)

puts hi("张三") {|x| "hello #{x}"}

a = [1,2,3,4]
puts a.class

def showNumbers(list)
  list.each { |x| puts x }
end


helloWorld = proc {|x| x * 10}


def printNumber(number)
  puts number
end

printNumber(helloWorld.call(99))

showNumbers(a)

# for index in a do
#   a << 3
#   puts index
# end


[1,2,3].each { |x| puts x * 10 }
10.times {|x| puts x}

# 单精度转换十进制



# 获取 控制位
def convert_from_dec(number)
  str = number.to_s;
  sign = str [0, 1]
  puts "sign is  #{sign}"
  puts "*\t" * 10
  m = str[1, 8]
  puts "M is \t" + m
  puts "*\t" * 10
  number = str[9, str.size]
  puts "Number is \t" + number
  puts "*\t" * 10
  result = getNumber(number)
  puts result
  # puts (get_expression(m) - 127) * (1 + result)
end

def get_expression(exp)
  sum = 0
  puts "*" * 100
  rev = exp.reverse
  puts rev
  for i in (0..7)
    number = rev[i, 1]
    if number.eql? ("1")
      sum = sum + 2 ** i
    end
  end
  return sum
end


# 获取 exp number
def getNumber(number)
  sum = 0.0
  rev = number.reverse
  puts rev
  for i in (0..22)
    number = rev[i, 1]
    if number.eql? ("1")
      puts -i
      sum = sum + 2 ** -i
    end
  end
  return sum
end
# convert_from_dec(010001000 10010000001000000000000)


puts getNumber(10000000000000000000000.to_s)


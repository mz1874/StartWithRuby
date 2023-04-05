# 单精度转换十进制

def convert_from_dec(number)
  str = number.to_s;
  sign = str [0, 1]
  puts sign ? "Number is #{sign} \t negative" : "Number is #{sign} \t  Positive"
  m = str[1, 8]
  puts "M is \t" + m
  number = str[9, str.size]
  puts "Number is \t" + number
  # get_expression(m) - 127 *
  puts getNumber(number)
end

def get_expression(exp)
  sum = 0
  puts "*" * 100
  rev = exp.reverse
  puts rev
  for i in (0..7)
    number = rev[i, 1]
    if number.eql? ("1")
      puts i
      sum = sum + 2 ** i
    end
  end
  return sum
end


def getNumber(number)
  sum = 0.000000
  rev = number.reverse
  puts rev
  for i in (0..22)
    number = rev[i, 1]
    if number.eql? ("1")
      puts i
      sum = sum + 2 ** -i
    end
  end
  return sum
end
convert_from_dec(11101010101010101010101010101010)
puts "11101010101010101010101010101010".length
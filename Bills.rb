a = 2

def judge_b(b)
  if b > 0
    print "end"
  else
    s = a ** b
    print s
    b = b -1
    judge_b(b)
  end
end

def hello
  puts "hellp"
end

def compare(a,b)
  if a > b
    a
  else
    b
  end

end

judge_b(7)


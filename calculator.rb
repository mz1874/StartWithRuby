puts "Pls input a number"
number_a = gets.to_f
puts "Pls input a operator"
operator = gets.to_str.chomp
puts "Pls input another number"
number_b = gets.to_f

# included 6
for i in (1..6)
  puts i
end

case operator
when '+'
  puts number_a + number_b
when '-'
  puts number_a - number_b
when '*'
  puts number_a * number_b
when '/'
  puts number_a / number_b
else
  # type code here
  puts "No"
end



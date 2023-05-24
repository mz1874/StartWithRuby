
def main

  # Place your code here.
  arr =Array.new(5)

  for i in 0..arr.length-1 do
    puts "Enter a number:"
    arr[i] = (gets().chomp.to_i)
  end


  arr.each { |index| puts index }
end

main
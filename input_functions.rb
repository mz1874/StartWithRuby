# Display the prompt and return the read string

# Test the functions above

def main
  puts "String entered is: " + read_string("Enter a String: ")
  puts "Boolean is: " + read_boolean("Enter yes or no:").to_s
  puts "Float is: " + read_float("Enter a floating point number: ").to_s
  puts "Integer is: " + read_integer_in_range("Enter an integer between 3 and 6: ", 3, 6).to_s
end

main if _FILE_ == $0
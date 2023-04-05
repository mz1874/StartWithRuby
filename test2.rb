
def read_string prompt
  puts prompt
  value =gets
end

# Display the prompt and return the read float
def read_float prompt
  value = read_string(prompt)
  value.chomp.to_f
end

# Display the prompt and return the read integer
def read_integer prompt
  value = read_string(prompt)
  value.to_i
end

# Read an integer between min and max, prompting with the string provided

def read_integer_in_range(prompt, min, max)
  value = read_integer(prompt)
  while (value < min or value > max)
    puts "Please enter a value between " + min.to_s + " and " + max.to_s + ": "
    value = read_integer(prompt);
  end
  value
end

# Display the prompt and return the read Boolean

def read_boolean prompt
  value = read_string(prompt)
  case value
  when 'y', 'yes', 'Yes', 'YES'
    true
  else
    false
  end
end

def print_float(value, decimal_places)
  print(value.round(decimal_places).to_s.chomp('.0'))
end



# put your code here - make sure you use the input_functions to read strings and integers
def get_label
  title = read_string "Please enter your title: (Mr, Mrs, Ms, Miss, Dr)"
  first_name = read_string "Please enter your first name:"
  last_name = read_string "Please enter your last name:"
  house_or_unit_no = read_string "Please enter the house or unit number:"
  street_name = read_string "Please enter the street name:"
  suburb = read_string "Please enter the suburb:"
  post_code = read_integer_in_range("Please enter a postcode (0000 - 9999)",0000,9999).to_s
  lable = title + " " + first_name + " " + last_name + "\n"+ house_or_unit_no + " " + street_name + "\n"+ suburb + " " + post_code
  return lable
end

def get_content_of_the_letter
  subject_line = read_string "Please enter your message subject line:"
  content = read_string "Please enter your message content:"
  message = "RE:" + " " + subject_line +"\n" + content
  return message
end

def print_the_letter
  puts get_label + "\n" + get_content_of_the_letter
end


def main()
  puts get_label
  # get_content_of_the_letter
  # print_the_letter()
end

main
require "./input_functions"

# get all formatted title
def get_message
  title = read_string "Please enter your title: (Mr, Mrs, Ms, Miss, Dr)"
  first_name = read_string "Please enter your first name:"
  last_name = read_string "Please enter your last name:"
  uni_number = read_string "Please enter the house or unit number:"
  street_name = read_string "Please enter the street name:"
  suburb = read_string "Please enter the suburb:"
  postcode = read_integer_in_range("Please enter a postcode (0000 - 9999)", 0000, 9999)
  # format the content for out put
  result = title+ " "+ first_name +" "+ last_name + "\n" + uni_number +" "+ street_name+"\n" + suburb +" "+ postcode.to_s
  return result
end

# get formatted content
def get_content
  subject_line = read_string("Please enter your message subject line:")
  content = read_string("Please enter your message content:")
  return "RE: " + subject_line +"\n\n" + content
end

# just print out input as out put
def print_message(a,b)
  puts a
  puts b
end

# main funcation
def main()
  # get result a
  result_a = get_message()
  # get result b
  result_b = get_content()
  print_message(result_a,result_b)
end


main
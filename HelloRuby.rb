$LOAD_PATH << "."
require 'input_function'
include InputFunction

# input patient name
def read_patient_name()
  read_string("input the patient name")
end

# calculate accommodation charges
def calculate_accommodation_charges()
  charge = read_float("Enter the accommodation charges: ")
  return charge
end

#calculate theatre charges
def calculate_theatre_charges()
  charge = read_float("Enter the theatre charges: ")
  return charge
end

#calculate pathology charges
def calculate_pathology_charges()
  charge = read_float("Enter the calculate pathology charges:")
  return charge
end

# print out
def print_patient_bill(name, total)
  puts "I am #{name}, I cost #{total}"
end

# create bill
def create_patient_bill()
  total = 0 # it is important to initialise variables before use!
  patient_name = read_patient_name()
  total += calculate_accommodation_charges()
  total += calculate_theatre_charges()
  total += calculate_pathology_charges()
  print_patient_bill(patient_name, total)
end

# runing
def main()
  create_patient_bill()
end

main()
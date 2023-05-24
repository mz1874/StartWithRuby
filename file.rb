# writes the number of lines then each line as a string.

def write_data_to_file(val)
  a_file = File.new("#{val}", "w")
  a = Array["Fred","Sam","Jill","Jenny","Zorro"]
  for index in (1..a.count.to_i)
    a_file.puts(index.to_s +  a.at(index-1))
  end
  a_file.close()
end

def read_data_from_file(val)
  file = File.open(val, "r")
  while line = file.gets
    puts line
  end
end

# writes data to a file then reads it in and prints
# each line as it reads.
# you should improve the modular decomposition of the
# following by moving as many lines of code
# out of main as possible.
def main
  fileName = "mydata.txt"
  write_data_to_file(fileName)
  read_data_from_file(fileName)
end

main

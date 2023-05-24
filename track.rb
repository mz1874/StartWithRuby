# put your code here:
class Track
  attr_accessor :name,:location
  def initialize(val,val2)
    @name =val
    @location=val2
  end
end

def read_track(a_file)
  file = File.open(a_file, "r")
  name = file.gets
  location = file.gets
  return Track.new(name,location)
end

def print_track(val)
  puts "Track name:"+val.name
  puts "Track location:"+val.location
end

def main()
  track = read_track("track.txt")
  print_track(track);
end

main() if __FILE__ == $0 # leave this

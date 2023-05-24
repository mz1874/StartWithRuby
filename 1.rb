require "./input_functions"
# put your code below



class Track
  attr_accessor :name,:location
  def initialize(val, val2)
    @name=val
    @location=val2
  end

end

def read_track()
  return Track.new(read_string("Enter track name:"),read_string("Enter track location:"))
end

def print_track(track)
  puts("Track name:" + track.name)
  puts("Track location: " + track.location)
end

def main()
  print_track(read_track())
end

# leave this line
main() if __FILE__ == $0
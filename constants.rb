module Genre
  Pop, Classic, Jazz, Rock = *0..3
end

puts("Pop " + Genre::Pop.to_s)
puts("Classic: " + Genre::Classic.to_s)
puts("Jazz: " + Genre::Jazz.to_s)
puts("Rock: " + Genre::Rock.to_s)
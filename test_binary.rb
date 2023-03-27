class TestBinary

  attr_accessor :bin

  def initialize(bin)
    @bin = bin
  end
end

# 0x 十六进制
# a = TestBinary.new(0x10)

#0b二进制
# a = TestBinary.new(0b10)

#
a = TestBinary.new(0b1100010)

puts a.bin

#
# 0 1 0 0 0  1  1
# 1 2 4 8 16 32 64

#
# 99
#
# 49 1
# 24 1
# 12 0
# 6 0
# 3 0
# 2 1
# 1
#
# 1100001
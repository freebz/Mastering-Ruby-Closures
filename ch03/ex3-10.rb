# Improving on Symbol#to_proc

class Symbol
  def to_proc
    lambda { |obj| obj.send(self) }
  end
end

words = %w(underwear should be worn on the inside)
words.map &:length # => [9, 6, 2, 4, 2, 3, 6]


[1, 2, 3].inject(0) { |result, element| result + element } # => 6


[1, 2, 3].inject(&:+)
# ArgumentError: wrong number of arguments (given 2, expected 1)
# from (irb):10:in `block in to_proc'
# from (irb):14:in `each'
# from (irb):14:in `inject'
# ...


class Symbol
  def to_proc
    lambda { |obj, args| obj.send(self, *args) }
  end
end

[1, 2, 3].inject(&:+) # => 6


words = %w(underwear should be worn on the inside)
words.map &:length # => [9, 6, 2, 4, 2, 3, 6]

# ArgumentError: wrong number of arguments (given 1, expected 2)
# from (irb):3:in `block in to_proc'
# from (irb):8:in `map'
# ...

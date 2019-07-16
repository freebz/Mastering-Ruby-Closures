# Block as Closures and Block Local Variables

def chalkboard_gag(line, repetition)
  repetition.times { |x| puts "#{x}: #{line}" }
end

chalkboard_gag("I will not drive the principal's car", 3)
# 0: I will not drive the principal's car
# 1: I will not drive the principal's car
# 2: I will not drive the principal's car


def chalkboard_gag(line, repetition)
  repetition.times { |x; line| puts "#{x}: #{line}" }
end

chalkboard_gag("I will not drive the principal's car", 3)
# 0: 
# 1: 
# 2: 


x = "outside x"
1.times { x = "modified from the outside blok" }

puts x # => modified from the outside blok


x = "outside x"
1.times { |;x| x = "modified from the outside block" }

puts x # => outside x

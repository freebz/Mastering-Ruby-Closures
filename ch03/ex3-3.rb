# The Difference Between a Lambda and p Proc

l = lambda { |x, y| puts "x: #{x}, y: #{y}" }

p = proc   { |x, y| puts "x: #{x}, y: #{y}" }


l.call("Ohai", "Gentle Reader")
# x: Ohai, y: Gentle Reader

p.call("Ohai", "Gentle Reader")
# x: Ohai, y: Gentle Reader


p.call("Ohai")
# x: Ohai, y:


l.call("Ohai")
# ArgumentError: wrong number of arguments (given 1, expected 2)


p.call("Ohai", "Gentle", "Reader")
# x: Ohai, y: Gentle


l.call("Ohai", "Gentle", "Reader")
# ArgumentError: wrong number of arguments (given 3, expected 2)

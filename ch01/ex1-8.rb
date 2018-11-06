# Implementing Enumerable#reduce (or Fold Left)

# Summing Values Using reduce

[1,2,3,4,5].reduce(10) { |acc, x| p "#{acc}, #{x}"; acc + x }
# "10, 1"
# "11, 2"
# "13, 3"
# "16, 4"
# "20, 5"
# => 25
    
  
adder.call(10, [1, 2, 3, 4, 5]) #=> 25

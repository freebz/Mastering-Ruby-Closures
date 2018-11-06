# Lexical Scoping: Closest Variable Wins

msg = "drive the principal's car"
# => "drive the principal's car"

3.times do
  prefix = "I will not"
  puts "#{prefix} #{msg}"
end

# I will not drive the principal's car
# I will not drive the principal's car
# I will not drive the principal's car
# => 3


puts prefix
# NameError: undefined local variable or method `prefix' for main:Object
# 	from (irb):6

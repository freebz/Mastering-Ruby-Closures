# Currying with Procs

discriminant = lambda { |a, b, c| b**2 - 4*a*c }

discriminant.call(5, 6, 7)
# => -104


discriminant = lambda { |a| lambda { |b| lambda { |c| b**2 - 4*a*c } } }

discriminant.call(5).call(6).call(7)
# => -104


discriminant = lambda { |a, b, c| b**2 - 4*a*c }.curry

discriminant.call(5).call(6).call(7)
# => -104


greeter = lambda do |greeting, salutation, name|
  "#{greeting} #{salutation} #{name}"
end


greeter.call("Dear", "Mr.", "Gorbachev")
# => "Dear Mr. Gorbachev"


greeter = lambda do |greeting, salutation, name|
  "#{greeting} #{salutation} #{name}"
end

dear_greeter = greeter.curry.call("Dear")
# => #<Proc:0x8daf9c8 (lambda)>


dear_greeter.call("Great").call("Leader")
# => "Dear Great Leader"


dear_greeter.("Great").("Leader")
# => "Dear Great Leader"


sum_ints = lambda do |start, stop|
  (start..stop).inject { |sum, x| sum + x }
end

sum_of_squares = lambda do |start, stop|
  (start..stop).inject { |sum, x| sum + x*x }
end

sum_of_cubes = lambda do |start, stop|
  (start..stop).inject { |sum, x| sum + x*x*x }
end


sum = lambda do |start, stop|
  (start..stop).inject { |sum, x| sum + ??? }
end


sum = lambda do |fun, start, stop|
  (start..stop).inject { |sum, x| sum + fun.call(x) }
end


sum_of_ints    = sum.(lambda { |x| x}, 1, 10)
sum_of_squares = sum.(lambda { |x| x*x }, 1, 10)
sum_of_cubes   = sum.(lambda { |x| x*x*x }, 1, 10)


sum_of_squares = sum.curry.(lambda { |x| x*x })


sum_of_squares.(1).(10) # => 385
sum_of_squares.(50).(100) # => 295475

# Simulating Classes with Closures

c = Counter.new
# => #<Counter:0x8c28bb8 @x=0>
c.incr
# => 1
c.incr
# => 2
c.get_x
# => 2
c.decr
# => 1
c.decr
# => 0
c.decr
# => -1

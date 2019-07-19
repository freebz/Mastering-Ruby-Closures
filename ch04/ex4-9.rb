# Implementing Lazy map

1.upto(Float::INFINITY).lax.map { |x| x*x }.map { |x| x+1 }.first(5)
# => [2, 5, 10, 17, 26]

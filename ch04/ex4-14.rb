# Implementing Lazy take

1.upto(Float::INFINITY).lax.map { |x| x*x }.map { |x| x+1 }.take(5).to_a
# => [2, 5, 10, 17, 26]

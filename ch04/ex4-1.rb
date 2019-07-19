# Understanding Lazy Enumerables

1.upto(Float::INFINITY).map { |x| x * x }.take(10)
# [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
# ...infinity loop...


1.upto(Float::INFINITY)
# => #<Enumerator: 1:upto(Infinity)>


1.upto(5).to_a
# => [1, 2, 3, 4, 5]


1.upto(Float::INFINITY).to_a
# ...infinite loop...


1.upto(Float::INFINITY).lazy.map { |x| x * x }
# => #<Enumerator::Lazy: #<Enumerator::Lazy:
#                        #<Enumerator: 1:upto(Infinity)>>:map>


1.upto(Float::INFINITY).lazy.map{ |x| x * x }.take(10)
# => #<Enumerator::Lazy: #<Enumerator::Lazy:
#                           #<Enumerator::Lazy:
#                              #<Enumerator: 1:upto(Infinity)>>:map>:take(10)>


1.upto(Float::INFINITY).lazy.map { |x| x * x }.take(10).to_a
# => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

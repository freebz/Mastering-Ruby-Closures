# First-Class Values

is_even = lambda { |x| x % 2 == 0 }
# => #<Proc:0x8bff6c8@(irb):48 (lambda)>


is_even.call(4)
# => true

is_even.call(5)
# => false


def complement(predicate, value)
  not predicate.call(value)
end
# => :complement

complement(is_even, 4)
# => false

complement(is_even, 5)
# => true


def complement(predicate)
  lambda do |value|
    not predicate.call(value)
  end
end
# => :complement


complement(is_even)
# => #<Proc:0x8be9490@(irb):58 (lambda)>


complement(is_even).call(4)
# => false
complement(is_even).call(5)
# => true

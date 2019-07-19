# External vs. Internal Iteration

# Creating an Enumerator from an Enumerable

e = Enumerator.new([1,2,3])
# warning: Enumerator.new without a block is deprecated; use Object#to_enum
# => #<Enumerator: [1, 2, 3]:each>

e.next
# => 1

e.next
# => 2

e.next
# => 3

e.next
# StopIteration: iteration reached an end
# 	from (irb):7:in `next'


e = Enumerator.new do |yielder|
  [1,2,3].each do |val|
    yielder << val
  end
end
# => #<Enumerator: #<Enumerator::Generator:0x9d82828>:each>


e.next
# => 1

e.next
# => 2

e.next
# => 3

e.next
# StopIteration: iteration reached an end
# 	from (irb):16:in `next'
# 	from (irb):16
# 	from /usr/bin/irb:11:in `<main>'


e = Enumerator.new do |yielder|
  [1,2,3].each do |val|
    yielder << val
  end
end

# => #<Enumerator: #<Enumerator::Generator:0x9dc86fc>:each>

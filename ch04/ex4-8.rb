e = 1.upto(Float::INFINITY).lax
# => #<Lax: #<Enumerator::Generator:0x9879bc4>:each>

e.next
# => 1

e.next
# => 2

e.next
# => 3


class Lax < Enumerator
  def initialize(receiver)
    super() do |yielder|
      receiver.each do |val|
        puts "add: #{val}"
        yielder << val
      end
    end
  end
end

lax = Lax.new([1, 2, 3])
lax.map { |x| puts "map: #{x}"; x }
# add: 1
# map: 1
# add: 2
# map: 2
# add: 3
# map: 3
# => [1, 2, 3]


lax.take(0)

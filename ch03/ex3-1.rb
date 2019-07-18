# Procs and the Four Ways of Calling Them

p = proc { |x, y| x + y }
# => #<Proc:0x8cb61c0@(irb):2>


p = Kernel.proc { |x, y| x + y }
# => #<Proc:0x8d21b50@(irb):3>


p = Proc.new { |x, y| x + y }
# => #<Proc:0x8d47a80@(irb):4>


p = proc { |x,y| x + y }
p.call("ah", "ai")
# => "ahai"

p.call(4, 2)
# => 6


p = proc { |x,y| x + y }
p.("ah", "ai")
p.(4, 2)


class Carly
  def call(who)
    "call #{who}, maybe"
  end
end

c = Carly.new
c.("me") # => "call me, maybe"


p = proc { |x,y| x + y }
p === ["ah", "ai"]


even = proc { |x| x % 2 == 0 }
case 11
  when even
    "number is even"
  else
    "number is odd"
end


even = proc { |x| x % 2 == 0 }
even === 11
# => false
even === 10
# => true


even = proc { |x| x % 2 == 0 }
even === [11]
# NoMethodError: undefined method `%' for [11]:Array
# 	from (irb):34:in `block in irb_binding'

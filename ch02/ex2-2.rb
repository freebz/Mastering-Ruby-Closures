# Executing Blocks with the yield Keyword

def do_it
  yield
end
# => :do_it


do_it { puts "I'm doing it" }
# I'm doing it
# => nil


do_it { [1,2,3] << 4 }
# => [1, 2, 3, 4]


do_it
# LocalJumpError: no block given (yield)
# 	from (irb):13:in `do_it'


def do_it(x, y)
  yield(x, y)
end
# => :do_it


do_it(2, 3) { |x, y| x + y }
# => 5

do_it("Ohai", "Benevolent Dictator") do |greeting, title|
  "#{greeting}, #{title}!!!"
end
# => "Ohai, Benevolent Dictator!!!"


def do_it(x)
  yield x
end
# => :do_it


do_it(42) { |num, line| "#{num}: #{line}" }
# => "42: "


a, b = 1 # => 1
b        # => nil


a, b = 1,2,3
# => [1, 2, 3]
a
# => 1
b
# => 2


def do_it
  yield "this", "is", "ignored!"
end
# => :do_it


do_it { puts "Ohai!" }
# Ohai!
# => nil

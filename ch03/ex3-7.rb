# Reimplementing Symbol#to_proc

obj = Object.new
[1,2,3].map &obj
# TypeError: wrong argument type Object (expected Proc)


class Object
  def to_proc
    proc {}
  end
end
# => :to_proc

obj = Object.new

[1, 2, 3].map &obj
# => [nil, nil, nil]


class Object
  def to_proc
    proc { |x| "Here's #{x}!" }
  end
end
# => :to_proc

obj = Object.new

[1,2,3].map(&obj)
# => ["Here's 1!", "Here's 2!", "Here's 3!"]


class Symbol
  def to_proc
    proc { |obj| obj }
  end
end
# => :to_proc


words.map(&:length)


words.map { |w| w.length }


class Symbol
  def to_proc
    proc { |obj| obj.length }
  end
end
# => :to_proc

["symbol", "cymbals", "sambal"].map(&:obj)
# => [6, 7, 6]


"ahai".send(:length)
# => 4

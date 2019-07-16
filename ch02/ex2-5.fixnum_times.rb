# Implementing Fixnum#times

3.times { puts "D'oh!" }
# D'oh!
# D'oh!
# D'oh!
# => 3


class Fixnum
  def times
    puts "This does nothing yet!"
  end
end


3.times { puts "D'oh!" }
# This does nothing yet!
# => nil


class Fixnum
  def times
    x = 0
    while x < self
      x += 1
      yield
    end
    self
  end
end


3.times { puts "D'oh!" }
# D'oh!
# D'oh!
# D'oh!
# => 3

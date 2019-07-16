# Implementing Array#each

%w(look ma no for loops).each do |x|
  puts x
end
# look
# ma
# no
# for
# loops
# => ["look", "ma", "no", "for", "loops"]


class Array
  def each
  end
end

%w(look ma no for loops).each do |x|
  puts x
end
# => nil


class Array
  def each
    x = 0
    while x < self.length
      yield self[x]
      x += 1
    end
  end
end

%w(look ma no for loops).each do |x|
  puts x
end
# look
# ma
# no
# for
# loops
# => nil

# lazy_enumerable/take.lax.rb

def take(n)
  taken = 0
  Lax.new(self) do |yielder, val|
    if taken < n
      yielder << val
      taken += 1
    else
      raise StopIteration
    end
  end
end

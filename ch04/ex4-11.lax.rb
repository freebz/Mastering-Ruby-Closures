# lazy_enumerable/skeleton/lax.rb

def map(&block)
  Lax.new(self)
end

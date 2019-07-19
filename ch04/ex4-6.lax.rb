# lazy_enumerable/skeleton/lax.rb

module Enumerable
  def lax
    Lax.new(self)
  end
end

class Lax < Enumerator

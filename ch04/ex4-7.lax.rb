# lazy_enumerable/skeleton/lax.rb

class Lax < Enumerator
  def initialize(receiver)
    super() do |yielder|
      receiver.each do |val|
        yielder << val
      end
    end
  end
end

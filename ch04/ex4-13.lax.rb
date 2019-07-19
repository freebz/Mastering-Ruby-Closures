# lazy_enumerable/map/lax.rb

def initialize(receiver)
  super() do |yielder|
    receiver.each do |val|
      if block_given?
        yield(yielder, val)
      else
        yielder << val
      end
    end
  end
end

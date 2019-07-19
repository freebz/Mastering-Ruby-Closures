# lazy_enumerable/take.lax.rb

def initialize(receiver)
  super() do |yielder|
    begin
      receiver.each do |val|
        if block_given?
          yield(yielder, val)
        else
          yielder << val
        end
      end
    rescue StopIteration
    end
  end
end

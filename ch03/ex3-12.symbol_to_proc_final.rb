# proc_lambdas/symbol_to_proc_final.rb

class Symbol
  def to_proc
    proc { |obj, args| obj.send(self, *args) }
  end
end

words = %w(underwear should be worn on the inside)
words.map &:length # => [9, 6, 2, 4, 2, 3, 6]

[1, 2, 3].inject(&:+) # => 6

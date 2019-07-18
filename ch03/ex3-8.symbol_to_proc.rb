# procs_lambdas/symbol_to_proc.rb

class Symbol
  def to_proc
    proc { |obj| obj.send(self) }
  end
end

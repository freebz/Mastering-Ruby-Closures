# Changing Context with instance_eval

self.match '/about' => 'home#about'


class Router

  def initialize(&block)
    # self is the Router instance
    instance_eval &block
  end

  # ...
end

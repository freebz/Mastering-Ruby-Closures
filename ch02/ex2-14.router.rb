# Block-to-Proc Conversion

class Router

  def initialize(&block)
    instance_eval &block
  end

  def match(route)
    puts route
  end

end

routes = Router.new do
  match '/about' => 'home#about'
end

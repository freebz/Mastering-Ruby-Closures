# Implementing a Router DSL

routes = Router.new do |r|
  r.match '/about' => 'home#about'
  r.match '/users' => 'users#index'
end


routes = Router.new do
  match '/about' => 'home#about'
  match '/users' => 'users#index'
end


routes = Router.new do
  match '/about' => 'home#about'
  match '/users' => 'users#index'
end

class Router
  # We are going to implement this!
end


class Router
  def initialize
    yield self
  end

  def match(route)
    puts route
  end
end


routes = Router.new do |r|
  r.match '/about' => 'home#about'
  r.match '/users' => 'users#index'
end


routes = Router.new do
  match '/about' => 'home#about'
  match '/users' => 'users#index'
end

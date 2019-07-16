# Using instance_eval to Change self

self
# => main
self.class
# => Object


def foo
  yield self
end
# => :foo

foo do
  puts self
end
# main
# => nil


routes = Router.new do
  match '/about' => 'home#about'
end
# in 'block in <main>': undefined method 'match' for main:Object (NoMethodError)

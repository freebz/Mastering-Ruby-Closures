# Generators and Fibers, Oh My!

f = Fiber.new do
  x = 0
  loop do
    Fiber.yield x
    x += 1
  end
end
# => #<Fiber:0x9de2188>


f.resume
# => 0

f.resume
# => 1

f.resume
# => 2

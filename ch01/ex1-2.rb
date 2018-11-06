# Identifying Free Variables

chalkboard_gag = lambda do |msg|
  lambda do
    prefix = "I will not"
    "#{prefix} #{msg}"
  end
end
# => #<Proc:0x8c02058@(irb):9 (lambda)>


inner_lambda = chalkboard_gag.call("drive the principal's car")
# => #<Proc:0x8bf9c8c@(irb):10 (lambda)>


inner_lambda.call()
# => "I will not drive the principal's car"

# Lambdas -- Same, But Different

lambda {}.class
# => Proc


proc {}.class
# => Proc


lambda {}.lambda?
# => true

proc {}.lambda?
# => false


# NOTE: This method doesn't exist!
lambda {}.proc?
# => true

# NOTE: This method doesn't exist!
proc {}.proc?
# => true


lambda { |x, y| x + y }.call(x, y)
lambda { |x, y| x + y }[x, y]
lambda { |x, y| x + y }.(x, y)
lambda { |x, y| x + y } === [x, y]


->(x, y){ x + y }.call(x, y)
->(x, y){ x + y }[x, y]
->(x, y){ x + y }.(x, y)
->(x, y){ x + y } === [x, y]

c = SomeClass.new

c.method_that_calls_proc_or_lambda lambda { return }
# calling Lambda now!
# Lambda gets called!


c = SomeClass.new

c.method_that_calls_proc_or_lambda proc { return }
# 'block in <main>': unexpected return (LocalJumpError)

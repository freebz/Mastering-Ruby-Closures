c1 = Counter.call
# => {:get_x=>#<Proc:0x8cc312c@/home/freebz/work/Mastering Ruby Closures/ch01/lamba_counter.rb:3 (lambda)>, :incr=>#<Proc:0x8cc3118@/home/freebz/work/Mastering Ruby Closures/ch01/lamba_counter.rb:4 (lambda)>, :decr=>#<Proc:0x8cc3104@/home/freebz/work/Mastering Ruby Closures/ch01/lamba_counter.rb:5 (lambda)>}


c1[:incr].call
# => 1

c1[:incr].call
# => 2

c1[:incr].call
# => 3

c1[:decr].call
# => 2

c1[:get_x].call
# => 2


c2 = Counter.call
# => {:get_x=>#<Proc:0x8cd7834@/home/freebz/work/Mastering Ruby Closures/ch01/lamba_counter.rb:3 (lambda)>, :incr=>#<Proc:0x8cd7820@/home/freebz/work/Mastering Ruby Closures/ch01/lamba_counter.rb:4 (lambda)>, :decr=>#<Proc:0x8cd77f8@/home/freebz/work/Mastering Ruby Closures/ch01/lamba_counter.rb:5 (lambda)>}

c2[:get_x].call
# => 0

c1[:get_x].call
# => 2

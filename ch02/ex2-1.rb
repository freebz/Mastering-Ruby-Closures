# Separating the General from the Specific

Array(1..20).select { |x| x.even? }
# => [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]


Array(1..20).select { |x| x.even? and x > 10 }
# => [12, 14, 16, 18, 20]


require 'ostruct'

catalog = []
catalog << OpenStruct.new(name: 'Nick', qty: 20, price: 99.00)
catalog << OpenStruct.new(name: 'Adidas', qty: 10, price: 109.00)
catalog << OpenStruct.new(name: 'New Balance', qty: 2, price: 89.00)


catalog.sort_by { |x| x.price }
# => [#<OpenStruct name="New Balance", qty=2, price=89.0>,
#     #<OpenStruct name="Nick", qty=20, price=99.0>,
#     #<OpenStruct name="Adidas", qty=10, price=109.0>]

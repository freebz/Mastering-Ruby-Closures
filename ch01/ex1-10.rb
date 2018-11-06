# Abstracting a Reducer

reducer = lambda do |acc, arr, binary_function|
  if arr.empty?
    acc
  else
    reducer.call(binary_function.call(acc, arr.first), arr.drop(1),
                 binary_function)
  end
end

reducer.call(1, [1,2,3,4,5], lambda { |x, y| x + y }) #=> 16

def fib(num, array)
  array << num
  return array.length if num.to_s.length == 1000
  fib(num + array[-2], array)
end

p fib(3, [1,1,2])
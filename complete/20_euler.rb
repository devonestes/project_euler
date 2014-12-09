def factorial(int)
  return 1 if int == 1
  int * factorial(int-1)
end

factorial(100).to_s.split("").inject(0) { |memo, int| memo + int.to_i }
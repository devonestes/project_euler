# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

def d(n)
  divisors = []
  (1...n).each do |number|
    divisors << number if n % number == 0
  end
  divisors.reduce(:+)
end

def create_hash
  d_hash = {}
  (2..9999).each do |num|
    d_hash[num] = d(num)
  end
  d_hash
end

def amicable
  amicable = []
  d_hash = create_hash
  d_hash.each do |k,v|
    amicable << k if d_hash[v] == k && d_hash[v] != v
  end
  amicable.inject(:+)
end

p amicable
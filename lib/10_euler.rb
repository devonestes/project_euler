# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'Prime'

def euler(num)
  answer = 0
  Prime.each(ubound = num) { |x| answer += x }
end

p euler(2000000)
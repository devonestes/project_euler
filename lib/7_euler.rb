# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

require 'Prime'

def euler(num)
  primes = []
  Prime.each { |x| if primes.length < num then primes << x else return primes[-1] end }
end

p euler(10001)
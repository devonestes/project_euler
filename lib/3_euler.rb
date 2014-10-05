	# The prime factors of 13195 are 5, 7, 13 and 29.
	# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def euler_3(input_int)
	# create a list of prime numbers from 1 to 100
	input_array = [input_int]
	primesArray = Prime.take_while {|p| p < Math.sqrt(input_int) }
	results = reduce(input_array, primesArray)
	return results
end

def reduce(results, primes)
	# iterate through prime number list to see if input_int % prime == 0
	results.each_index { |index|
		primes.each { |prime|
			if results[index] == prime
			elsif results[index] % prime == 0
			results[index] = results[index]/prime
			results << prime
			end
		}
	}
end

puts
print euler_3(10) == [2, 5]
puts
print euler_3(11) == [11]
puts
print euler_3(25) == [5, 5]
puts
print euler_3(13195) == [5, 7, 13, 29]

puts
print euler_3(600851475143)
puts ""



# Write a method that takes an array of stock prices (prices on days
# 0, 1, ...), and outputs the most profitable pair of days on which to
# first buy the stock and then sell the stock, e.g.: stock_picker( [ 44,
# 30, 24, 32, 35, 30, 40, 38 ] ) == [ 2, 6 ]

def stock_picker(array)
	days = Hash.new

	array.each { |index|
		days[array.index(index)] = []
	}

# create array for each day that is difference between day and subsequent days
	days.each { |key, value|
		output_array = []
		array.each { |price|
			puts key
			output_array << price - array[key]
			output_array = output_array.slice(key...array.length)
		}
		days[key] = output_array
	}

# choose which array has largest difference


# return array with [buy_date, sell_date]

return days

end

print stock_picker([1,4,3,20,2])

puts ""

print stock_picker([ 44, 30, 24, 32, 35, 30, 40, 38 ])

puts ""
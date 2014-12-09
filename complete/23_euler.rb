def find_divisors(number)
  output = (1...number).map { |num| num if number % num == 0 }.compact
end

def create_abundant_array
  (2..28124).map { |num| num if find_divisors(num).inject(:+) > num }.compact
end

def create_abundant_sums
  sums = []
  abundants = create_abundant_array
  abundants.each_with_index do |number, index|
    (index..abundants.length).each do |nxt|
      sums << number + abundants[nxt] unless abundants[nxt] == nil
    end
  end
  sums.uniq!
end

p ((1..28124).to_a - create_abundant_sums).inject(:+)

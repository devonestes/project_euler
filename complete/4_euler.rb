# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def euler
  first = 900
  second = 901
  largest = 1001
  while first < 1000
    while second < 1000
      if (first * second) == (first * second).to_s.reverse.to_i && (first * second) > largest
        largest = (first * second)
      end
      second += 1
    end
    second = 901
    first += 1
  end
  largest
end

print euler
puts
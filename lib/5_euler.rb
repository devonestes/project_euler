# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def euler(low, high, init)
  until (low..high).all? { |num| init % num == 0 }
    init += 1
  end
  init
end

p euler(1, 10, 2519)
p euler(1, 11, 27719) # answer = euler(1, 10, 2519)*11
p euler(1, 12, 27719)
p euler(1, 13, 360359) # answer = euler(1, 12, 2519)*13
p euler(1, 14, 360359)
p euler(1, 15, 360359)
p euler(1, 16, 720719) # answer = euler(1, 15, 2519)*2
p euler(1, 17, 12252239) # answer = euler(1, 16, 2519)*17
p euler(1, 18, 12252239)
p euler(1, 19, 232792559) # answer = euler(1, 18, 2519)*19
p euler(1, 20, 232792559)


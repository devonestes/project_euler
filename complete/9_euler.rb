# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a**2 + b**2 = c**2

# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.

# Find the product abc.

def euler
  a = 100
  b = 100
  c = 200
  while (a < 500)
    if (a**2 + b**2 == c**2) && (a + b + c == 1000)
      return a*b*c
    else
      while b < 500
        if (a**2 + b**2 == c**2) && (a + b + c == 1000)
          return a*b*c
        else
          while c < 500
          if (a**2 + b**2 == c**2) && (a + b + c == 1000)
            return a*b*c
          else
            c += 1
          end
          end
        c = b
        b += 1
      end
      end
      b = a
      a += 1
    end
    end
end

p euler
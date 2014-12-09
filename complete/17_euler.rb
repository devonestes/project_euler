# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

def euler

# create array containing number 1-1000 as strings
nums = (1..1000).map { |num| num.to_s }
counter = 0
english = ""
# iterate over each string in the array
nums.each do |num|
  # converting the number to the english representation of that number
  if num.length >= 1
    if num.length >= 2
      if num.length >= 3
        if num.length == 4
          english += "onethousand"
        end
        case num[-3].to_i
        when 1
          english += "onehundred"
        when 2
          english += "twohundred"
        when 3
          english += "threehundred"
        when 4
          english += "fourhundred"
        when 5
          english += "fivehundred"
        when 6
          english += "sixhundred"
        when 7
          english += "sevenhundred"
        when 8
          english += "eighthundred"
        when 9
          english += "ninehundred"
        end
        if num[-2, 2] != "00"
          english += "and"
        end
      end
    if num[-2, 2].to_i < 20 && num.to_i > 10 && num[-2] != "0"
      case num[-1].to_i
      when 0
        english += "ten"
      when 1
        english += "eleven"
      when 2
        english += "twelve"
      when 3
        english += "thirteen"
      when 4
        english += "fourteen"
      when 5
        english += "fifteen"
      when 6
        english += "sixteen"
      when 7
        english += "seventeen"
      when 8
        english += "eighteen"
      when 9
        english += "nineteen"
      end
    end
    if num.to_i == 10
      english += "ten"
    end
    if num[-2, 2].to_i >= 20
      case num[-2].to_i
      when 2
        english += "twenty"
      when 3
        english += "thrirty"
      when 4
        english += "forty"
      when 5
        english += "fifty"
      when 6
        english += "sixty"
      when 7
        english += "seventy"
      when 8
        english += "eighty"
      when 9
        english += "ninety"
      end
    end
  end
end
  if num[-2] != "1"
case num[-1].to_i
  when 1
    english += "one"
  when 2
    english += "two"
  when 3
    english += "three"
  when 4
    english += "four"
  when 5
    english += "five"
  when 6
    english += "six"
  when 7
    english += "seven"
  when 8
    english += "eight"
  when 9
    english += "nine"
  end
end

  # count number of letters in the english representation of that number, and add to counter
p num
p english
  counter += english.length
  english = ""
end

return counter
end

p euler
# Using p022_names.txt, a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?
require 'csv'

def create_letter_hash
  letter_hash = {}
  ('A'..'Z').each_with_index do |letter, index|
    letter_hash[letter] = index + 1
  end
  letter_hash
end

def calc_name_score(name)
  total = 0
  letter_hash = create_letter_hash
  name.split("").each do |letter|
    total += letter_hash[letter]
  end
  total
end

def calc_all_names
  names = CSV.readlines('p022_names.txt').flatten.sort
  total = 0
  names.each_with_index do |name, index|
    total += (calc_name_score(name) * (index + 1))
  end
  total
end

p calc_all_names

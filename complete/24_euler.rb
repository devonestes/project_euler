permutations = %w[0 1 2 3 4 5 6 7 8 9].permutation.map &:join
permutations.sort
p permutations[999999]
# Greed is a dice game played with five six-sided dice. Your mission, should you choose to accept it, is to score a throw according to these rules. You will always be given an array with five six-sided dice values.

# Three 1's => 1000 points
# Three 6's =>  600 points
# Three 5's =>  500 points
# Three 4's =>  400 points
# Three 3's =>  300 points
# Three 2's =>  200 points
# One   1   =>  100 points
# One   5   =>   50 point

# A single die can only be counted once in each roll. For example, a "5" can only count as part of a triplet (contributing to the 500 points) or as a single 50 points, but not both in the same roll.
#
# Example scoring
#
# Throw       Score
# ---------   ------------------
# 5 1 3 4 1   50 + 2 * 100 = 250
# 1 1 1 3 1   1000 + 100 = 1100
# 2 4 4 5 4   400 + 50 = 450


def score( dice )
  # refactoring code
  one_and_five = dice.count(1) * 100 + dice.count(5) * 50

  # for case of 1
  if dice.count(1) >= 3
    return 1000 + (dice.count(1) - 3) * 100 + dice.count(5) * 50
  # for case of 5
  elsif dice.count(5) >= 3
    return 500 + dice.count(1) + (dice.count(5) - 3) * 50
  # for case of 6
  elsif dice.count(6) >= 3
    return 600 + one_and_five
  # for case of 4
  elsif dice.count(4) >= 3
    return 400 + one_and_five
  # for case of 3
  elsif dice.count(3) >= 3
    return 300 + one_and_five
  # for case of 2
  elsif dice.count(2) >= 3
    return 200 + one_and_five
  # for case of no combos
  else
    return one_and_five
  end

end

# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
# Difficulty: 3/5

# num_coins = 0
# input = 3 = x
#
# x => 1.5, 1, .75
# num_coins => 3
#


def wonky_coins(n)
  if n == 0
    return 1
  end
  return wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4)


end

puts(wonky_coins(6))

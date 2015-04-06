# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

def nth_prime(n)
  number_of_primes = 0
  idx2 = 2

  while number_of_primes < n

    if is_prime?(idx2) == true
        number_of_primes += 1
        if number_of_primes == n
          return idx2
        end

    end

  idx2 += 1

  end





end

# puts(nth_prime(1))
# puts(nth_prime(2))
# puts(nth_prime(3))
# puts(nth_prime(4))
# These are tests to check that your code is working. After writing
# your solution, they should all print true.
#
puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)

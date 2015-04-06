# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

def no_repeats(year_start, year_end)
  result = []
  (year_start..year_end).each do |yr|
    result << yr if no_repeat?(yr)
  end
  result
end

def no_repeat?(year)
  no_repeat = []
  year.to_s.each_char do |char|
    return false if no_repeat.include?(char)
    no_repeat << char
  end
    return true
end


puts(no_repeats(1980, 1987))

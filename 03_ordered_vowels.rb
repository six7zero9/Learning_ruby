# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5

def ordered_vowel_words(str)
  word_arr = []
  str.downcase.split(" ").each do |tester|
    word_arr << tester if ordered_vowel_word?(tester)
  end
  return word_arr.join(" ")
end

def ordered_vowel_word?(word)
  vowels = []
  word.downcase.each_char do |ltr|
    vowels << ltr if (ltr == "a" || ltr == "e" || ltr == "i" || ltr == "o" || ltr == "u")
  end
  if vowels == vowels.sort
    return true
  else
    return false
  end
end

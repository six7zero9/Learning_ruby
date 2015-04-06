# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#
# Difficulty: 3/5

def word_unscrambler(str, words)
  answer_arr = []
  words.each do |word|
    answer_arr << word if word.split("").sort.join("") == str.split("").sort.join("")
  end

  answer_arr
end

# puts(word_unscrambler("cat", ["tic", "toc", "tac", "act"]))

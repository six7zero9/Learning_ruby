# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5

def letter_count(str)
  letter_hash = Hash.new(0)

  str.downcase.each_char do |char|
    letter_hash[char] +=1 unless char == " "
  end
  letter_hash
end

# 3.times do
#   puts "."
#   sleep(0.3)
# end
#
# puts "\nLets create a hash."
# 3.times do
#   puts "."
#   sleep(0.3)
# end
#
# answer = "yes"
#
# while answer == "yes"
#   puts "\n---------------------------------------------------------"
#   puts "Enter a word or sentence to create a count of each letter:"
#   puts "---------------------------------------------------------\n"
#   input = gets.chomp
#   puts "\n**********************************************************\n"
#   puts letter_count(input)
#   puts "**********************************************************"
#   cont = 0
#     while cont == 0
#     puts "\n\nWould you like to count another sentence? \nEnter YES or NO\n\n"
#     answer = gets.chomp.downcase
#     if answer == "yes"
#       cont = 1
#     elsif answer == "no"
#       cont = 1
#     else
#       cont = 0
#     end
#
#     end
# end
# 5.times do
#   puts "."
#   sleep(0.3)
# end
# puts "Have a nice day! :)"

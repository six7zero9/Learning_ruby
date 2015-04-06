def test(str)
  vowel_hash = Hash.new(0)
  vowels = ["a", "e", "i", "o", "u"]
  str.downcase.each_char do |boobs|
    vowel_hash[boobs] += 1 if vowels.include?(boobs)
  end
  vowel_hash.sort
end


p test("Hey there.  This is a test to see if I can make a hash
 with all the vowels in this sentence. aoooooooo")

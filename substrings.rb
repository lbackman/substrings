# Take in a string as argument and separate it in to an array of downcase
# with punctuation removed.
# Then, convert all words in to arrays themselves.
# Finally build all combinations of substrings from consecutive elements
# in the arrays and recombine them to words.

s = "Never in my life."
# Split string in to array with punctuation removed
a = s.downcase.gsub(/\W+/, " ").split(" ")
substring_array = []
combos = []
a.each do |word|
  i = 0
  len = word.length
  while i < len
    j = len - (len - i)
    while j < len
      combos << word[i, len - j]
      j += 1
    end
    i += 1
  end
  substring_array << combos
  combos = []
end
dictionary = ["below","down","go","going","horn","how","howdy","it",
              "i","low","own","part","partner","sit"]

def get_substrings(arr)
  substring_array = []
  combos = []
  # Add all possible iterations of the words in arr to new array 
  arr.each do |word|
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
  substring_array.flatten
end

def substrings(string, words)
  # downcase letters and remove punctuation, then make array
  arr = string.downcase.gsub(/\W+/, " ").split(" ")
  substrings = get_substrings(arr)
  hash = Hash.new(0)
  words.each do |w|
    hash[w] = substrings.count(w) if substrings.count(w) > 0
  end
  puts hash
end

puts "Give a word or phrase to check for substrings."
str = gets.chomp
substrings(str, dictionary)
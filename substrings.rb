dictionary = ["below","down","go","going","horn","how","howdy","it",
              "i","a","low","own","part","partner","sit"]

def get_substrings(arr)
  substring_array = []
  combos = []
  # Add all possible iterations of the words in arr to new array 
  arr.each do |word|
    # i = 0
    len = word.length
    len.times do |i|
      (len - i).times do |j|
        combos << word[i, len - j - i]
      end
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
  hash
end

puts "Give a word or phrase to check for substrings."
str = gets.chomp
p substrings(str, dictionary)
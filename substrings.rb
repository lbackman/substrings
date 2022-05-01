dictionary = ["below","down","go","going","horn","how","howdy","it",
              "i","low","own","part","partner","sit"]

def get_substrings(arr)
  substring_array = []
  combos = []
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
  arr = string.downcase.gsub(/\W+/, " ").split(" ")
  substrings = get_substrings(arr)
  hash = Hash.new(0)
  words.each do |w|
    if substrings.count(w) > 0
      hash[w] = substrings.count(w)
    end
  end
  puts hash
end

puts "Give a word or phrase to check for substrings."
str = gets.chomp
substrings(str, dictionary)
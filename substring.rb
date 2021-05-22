require 'pry'

# #substrings
# takes a word and array of valid substrings, returns a hash listing each 
# substring found in the origin string, and how many times it was found

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, list)
  matches = {}
  list.each do |word|
    count = string.downcase.scan(word).length
    matches[word] = count unless count == 0
  end
  matches
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
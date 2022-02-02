def substrings(string, dict)
  hash = Hash.new(0)
  split_string = string.split()
  dict.each do |word| 
    split_string.each do |string_word|
      if string_word.include?(word)
        hash[word] += 1
      end
    end
  end
  puts hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts("Enter string substring")

string = gets.chomp

substrings(string, dictionary)
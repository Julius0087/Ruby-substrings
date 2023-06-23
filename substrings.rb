def substrings(string, dictionary)
  string_arr = string.split(" ")
  return_hash = Hash.new(0)
  dictionary.each do |dict_word|
    string_arr.each do |word|
      return_hash[dict_word] += 1 if word.downcase.include?(dict_word)
    end
  end
  return_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
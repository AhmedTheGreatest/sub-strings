def substrings(text, dictionary)
  text = text.downcase
  dictionary.reduce(Hash.new(0)) do |result, item|
    result[item] += 1 if text.include?(item)
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

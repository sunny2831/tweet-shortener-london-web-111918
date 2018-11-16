
 def word_substituter(tweet)
  tweet.split.map{|x| if DICTIONARY.has_key?(x) then DICTIONARY[x] else x end}.join(" ")
end

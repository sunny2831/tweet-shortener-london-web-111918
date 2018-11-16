def dictionary = {
  "hello" => 'hi',
  "to" => 2,
  "two" => 2,
  "too" => '2',
  "for" => 4,
  "For" => 4,
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
}

 def word_substituter(tweet)
  tweet_array = tweet.split.collect { |word|
     if dictionary.keys.include?(word)
       word = dictionary[word]
     else
        word
     end
   }
   tweet_array.join(" ")
end

# Write your code here.
dictionary = {
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
  tweet.split.collect do |word|
    if dictionary.has_key?[word]
      then dictionary(word)
    else
      word
    end
  end
end
    

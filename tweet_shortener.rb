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
  tweet.split.map{|x| if dictionary.has_key?(x) then dictionary[x] else x end}.join(" ")
end

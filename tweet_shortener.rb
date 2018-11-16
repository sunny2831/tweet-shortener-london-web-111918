def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(tweet)
  tweetArray = tweet.split.collect { |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else word
    end }
  tweetArray.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.collect { |tweet|
    puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..137] + ("..")
  else
    word_substituter(tweet)
  end
end

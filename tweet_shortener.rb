# Write your code here.
def dictionary

# 	 words_to_be_substituted = ["hello"


# 	  becomes 'hi'
# "to, two, too" become '2' 
# "for, four" become '4'
# 'be' becomes 'b'
# 'you' becomes 'u'
# "at" becomes "@" 
# "and" becomes "&"]
words_to_be_substituted = {
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

# puts words_to_be_substituted
end


def word_substituter(tweet)
	tweet_array = tweet.split(" ")
	dictionary.keys.each do |index|
		tweet_array.map! { |x| x.downcase == index ? dictionary[index] : x}
	end
	tweet_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
	array_of_tweets.each do |index|
		puts word_substituter(index)
	end
end

def selective_tweet_shortener(tweet)
	if tweet.length > 140
		word_substituter(tweet)
	else
		tweet
	end
end

def shortened_tweet_truncator(tweet)

	short_version = word_substituter(tweet)
	if short_version.length > 140 
		short_version[0...140]
	else
		short_version
	end
end
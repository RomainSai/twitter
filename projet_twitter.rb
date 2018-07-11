require 'dotenv'
require 'twitter'
require 'pry'

Dotenv.load

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_SECRET"]
  config.access_token        = ENV["TWITTER_TOKEN_KEY"]
  config.access_token_secret = ENV["TWITTER_TOKEN_SECRET"]
end

binding.pry


puts client.followers("the_hacking_pro")

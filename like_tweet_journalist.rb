require 'dotenv'
require 'Twitter'
require 'pry'

Dotenv.load

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_SECRET"]
  config.access_token        = ENV["TWITTER_TOKEN_KEY"]
  config.access_token_secret = ENV["TWITTER_TOKEN_SECRET"]
end

journalists = ["@jcunniet","@PaulLampon","@Aziliz31"]

a=1
b=2
n = 0 #position destinataires



while a != b # création d'une boucle infini (condition impossible)
	if n <= 371
  		phrase = "Bonjour #{@journalists[n]}, je suis élève à The Hacking Project une formation gratuite au code, ceci est un bot Twitter trop cool !"



  		client.update(phrase)
    	n = n + 1
    	sleep 87 #attend 87 secondes entre chaque tweets, pour ne pas dépasser les 100 tweet/h ni 1000 tweet/jour

	else
		n = 1
	end
end

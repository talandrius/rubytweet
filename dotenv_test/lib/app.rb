require 'dotenv'# Appelle la gem Dotenv
# ligne très importante qui appelle la gem.
require 'twitter'

Dotenv.load
# n'oublie pas les lignes pour Dotenv ici…

# quelques lignes qui appellent les clés d'API de ton fichier .env
client = Twitter::REST::Client.new do |config|

# Il est ensuite très facile d'appeler les données du hash ENV, par exemple là je vais afficher le contenu de la clé TWITTER_API_SECRET

  config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

# ligne qui permet de tweeter sur ton compte
client.update('Google Workspace arrive #google #workspace https://cutt.ly/FgezRk2 !!!!')
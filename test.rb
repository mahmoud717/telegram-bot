require 'httparty'

# response = HTTParty.get("https://type.fit/api/quotes")
# p response[2]
response = HTTParty.get("https://official-joke-api.appspot.com/jokes/general/random")
setup = response[0]["setup"]
punchline = response[0]["punchline"]
text = "#{setup}\n#{punchline} "
puts text
  
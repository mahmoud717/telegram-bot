require 'telegram/bot'
require "../lib/commander.rb"

token = '1230860766:AAFRmDQ91XJrp095Ro_2Hbrd_-nwRNlf-kM'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    Commander.new(message, bot).respond
  end
end
require "telegram_bot"
require "../lib/commands.rb"
token = "1172142391:AAEvgXIdl7ZhqRDofJ0uBf5ZCkRxt4Z-_oo"
bot = TelegramBot.new(token: token)
bot.get_updates(fail_silently: true) do |message|
    puts "@#{message.from.username}: #{message.text}"
    command = message.get_command_for(bot)
    first_name = message.from.first_name

cmd = Commands.new(first_name)

  message.reply do |reply|
    case command
    when /start/i
      reply.text = "Hello, #{message.from.first_name}. I'm the Quote Bot."
      reply.text = "To see the lest of available command type /commands"
    when /commands/i
      reply.text = cmd.available_commands
    when /greet/i
      reply.text = cmd.greet
    else
      reply.text = "I have no idea what #{command.inspect} means."
    end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)
  end 
end
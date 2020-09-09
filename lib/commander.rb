require "../lib/commands.rb"
class Commander
    def initialize(message, bot)
        @message = message
        @bot= bot
    end
    def respond
        cmd = Commands.new(@message , @bot)
        case @message.text
        when '/start'
            cmd.start_respond
        when '/stop'
            cmd.stop_respond
        when '/greet'
            cmd.greet_respond
        when '/gif'
            cmd.gif_respond
        when "/commands"
            cmd.commands_respond
        when "/dice"
            cmd.dice_respond
        when "/quote"
            cmd.quote_respond
        when "/joke"
            cmd.joke_respond
        end
    end
end
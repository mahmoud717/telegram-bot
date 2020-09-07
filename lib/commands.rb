class Commands
    def initialize(first_name)
        @first_name = first_name
    end
    def available_commands
        commands = "/greet :- To send a random greeting. \n/commands :- To show available commands. \n/gif :- To display a random gif meme.\n/song :- To play a random song. \n/quote :- To display a random quote. \n/joke :- To display a random Joke"
        commands
    end
    def greet
        random_greetings = ['bonjour', 'hola', 'hallo', 'sveiki', 'namaste', 'salaam', 'szia', 'halo', 'ciao']
        return  "#{random_greetings.sample.capitalize}, #{@first_name}!"
    end
    def song

    end
    def gif
        gif_key = "2SZQ8K1GM7CN"
        
    end
    def quote
    end
    def joke
    end
end
class CommandLine
    def greet
        # puts "What do you fancy?".colorize(:light_blue)
        def header
        doc = <<-'TIME' 
         _  _  _ _                       _                                ___                      ____  
        | || || | |          _          | |                              / __)                    (___ \ 
        | || || | | _   ____| |_      _ | | ___     _   _  ___  _   _   | |__ ____ ____   ____ _   _  ) )
        | ||_|| | || \ / _  |  _)    / || |/ _ \   | | | |/ _ \| | | |  |  __) _  |  _ \ / ___) | | |/_/ 
        | |___| | | | ( ( | | |__   ( (_| | |_| |  | |_| | |_| | |_| |  | | ( ( | | | | ( (___| |_| |_   
         \______|_| |_|\_||_|\___)   \____|\___/    \__  |\___/ \____|  |_|  \_||_|_| |_|\____)\__  (_)  
                                                   (____/                                     (____/     
        
        TIME
        end
        puts header
        puts "The boring way to tell us about your interests".colorize(:light_blue)
    end
     

    def gets_user_input
        puts "What is your name?".colorize(:blue)
        print "input: ".colorize(:blue)
        input = gets.chomp
        input
    end

    def run 
        greet
        input = gets_user_input
        #save input as new user name
    end

    def show_menu
        prompt = TTY::Prompt.new
        answer = prompt.select("What do you want to do?", ["Select Interests", "View my Interests"])
            if answer == "Select Interests"
                choices = ["Art", "Food", "Bars", "Music", "Baseball"]
                prompt.multi_select("What are you interested in?", choices)
                # create UserInterest.new("" => )
            else answer == "View my Interests"
                # need to display list of this users' interests
            end   
        

    end 

 


end # encd of class
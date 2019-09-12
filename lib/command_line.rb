class CommandLine
    def greet
        puts "What do you fancy?"
        puts "The boring way to tell us about your interests"
    end
     

    def gets_user_input
        puts "What is your name?"
        print "input: "
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
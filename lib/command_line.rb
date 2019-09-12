class CommandLine
    def greet
        puts "What do you fancy?"
        puts "The boring way to tell us about your interests"
    end
     

    def gets_user_input
        puts "What is your name?"
        print "input: "
        gets.chomp
    end

    def run 
        greet
        input = gets_user_input
        #save input as new user name
    end

    def show_menu
        prompt = TTY::Prompt.new
        prompt.select("What do you want to do?", %w(Select_Interests View_My_Interests ))
    end

 


end # encd of class
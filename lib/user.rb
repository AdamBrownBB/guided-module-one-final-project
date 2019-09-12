class User < ActiveRecord::Base
    has_many :user_interests
    has_many :interests, through: :user_interests

    def ask_interests
        prompt = TTY::Prompt.new
        choices = ["Art", "Food", "Bars", "Music", "Baseball"]
        var = prompt.select("what are your interests", choices)
        new_ui = Interest.all.find{|int| int.name == var}
        
        UserInterest.create(user_id: self.id, interest_id: new_ui.id)
    end

    def ask_interests_again
        prompt = TTY::Prompt.new
        choices = ["Art", "Food", "Bars", "Music", "Baseball"]
        var = prompt.select("what else do you like?", choices)
        new_ui = Interest.all.find{|int| int.name == var}
        
        UserInterest.create(user_id: self.id, interest_id: new_ui.id)
    end

    def delete_user_interest
        prompt = TTY::Prompt.new
        deletion_choices = self.interests.map {|interest| interest.name}
        deletion = prompt.select("Would you like to be less interested in anything?", deletion_choices)

        test_var = self.user_interests
        binding.pry
        test_var.delete("name" => deletion)
        binding.pry
    end

    

end #end of user class
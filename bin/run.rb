require_relative '../config/environment'
require_relative '../lib/command_line.rb'
require 'pry'
require "tty-prompt"


new_cli = CommandLine.new 
new_cli.greet
input = new_cli.gets_user_input 
puts "Hi #{input}!".colorize(:green)
current_user = User.create("name" => input)
current_user.ask_interests
current_user.ask_interests_again
current_user.delete_user_interest
# new_cli.show_menu
require_relative '../config/environment'
require_relative '../lib/command_line.rb'
require 'pry'
require "tty-prompt"

new_cli = CommandLine.new 
new_cli.greet
input = new_cli.gets_user_input 
puts "Hi #{input}!"
User.create("name" => input)
new_cli.show_menu
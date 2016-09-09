user_selection = ""

until user_selection == "quit"
  user_selection = STDIN.gets.chomp
  STDOUT.write(user_selection + "\n")
end

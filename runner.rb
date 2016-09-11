require_relative 'transaction'

user_selection = ""
transaction = Transaction.new()

transaction.print_inventory_and_menu
until user_selection == "q" || user_selection == "Q"
  user_selection = STDIN.gets.chomp
  transaction.run_order(user_selection)
end

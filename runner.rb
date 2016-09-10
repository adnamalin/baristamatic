require_relative 'store'
require_relative 'printer'

# user_selection = ""
#
# until user_selection == "quit"
#   user_selection = STDIN.gets.chomp
#   STDOUT.write(user_selection + "\n")
# end

store = Store.new
printer = Printer.new
# printer.print_inventory(store.inventory)
printer.print_menu(store.menu)

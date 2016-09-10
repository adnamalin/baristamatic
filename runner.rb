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
printer.print_inventory(store.inventory)
# p store.inventory
# {<Ingredient:0x007fe6ac1b7138 @name="coffee", @unit_cost=0.75>=>10, #<Ingredient:0x007fe6ac1b70e8 @name="decaf coffee", @unit_cost=0.75>=>10, #<Ingredient:0x007fe6ac1b7098 @name="sugar", @unit_cost=0.25>=>10, #<Ingredient:0x007fe6ac1b7048 @name="cream", @unit_cost=0.25>=>10, #<Ingredient:0x007fe6ac1b6ff8 @name="steamed milk", @unit_cost=0.35>=>10, #<Ingredient:0x007fe6ac1b6fa8 @name="foamed milk", @unit_cost=0.35>=>10, #<Ingredient:0x007fe6ac1b6f58 @name="espresso", @unit_cost=1.1>=>10, #<Ingredient:0x007fe6ac1b6f08 @name="cocoa", @unit_cost=0.9>=>10, #<Ingredient:0x007fe6ac1b6eb8 @name="whipped cream", @unit_cost=1.0>=>10}

require_relative 'store'
require_relative 'printer'

class Transaction

  def initialize(store_options = {})
    @store = Store.new(store_options)
    @printer = Printer.new
    @drink_matcher = num_to_drink
  end

  def print_inventory_and_menu
    @printer.print_inventory(@store.inventory)
    @printer.print_menu(@store)
  end

  def run_order(user_input)
    if user_input == "R" || user_input == "r"
      @store.restock_inventory
      print_inventory_and_menu
    elsif @drink_matcher.keys.include?(user_input)
      order_drink(user_input)
    elsif user_input == "Q" || user_input == "q"
    else
      puts "Invalid Selection: #{user_input}"
    end
  end

  def order_drink(drink_num)
    drink = @drink_matcher[drink_num]
    if @store.in_stock?(drink)
      @store.remove_from_inventory(drink)
      puts "Dispensing: #{drink}"
      print_inventory_and_menu
    else
      puts "Out of Stock: #{drink.name}"
    end
  end

  def num_to_drink
    drink_matcher = {}
    counter = 1
    @store.menu.each do |item|
      drink_matcher[counter.to_s] = item
      counter += 1
    end
    drink_matcher
  end

end

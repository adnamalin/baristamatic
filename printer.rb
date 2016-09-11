class Printer

  def print_inventory(inventory)
    puts "Inventory:"
    inventory.each do |item, quantity|
      puts "#{item[:name].capitalize},#{quantity}"
    end
  end

  def print_menu(store)
    counter = 1
    puts "Menu:"
    store.menu.each do |drink|
      puts "#{counter}, #{drink.name.capitalize}, $#{drink.cost}, #{store.in_stock?(drink)} "
      counter += 1
    end
  end

end

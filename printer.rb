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
      puts "#{counter}, #{drink.name.capitalize}, $#{cost_format(drink.cost)}, #{store.in_stock?(drink)} "
      counter += 1
    end
  end

  def cost_format(cost)
    if cost.to_s.length == 3
      cost.to_s + "0"
    else
      cost.to_s
    end
  end
end

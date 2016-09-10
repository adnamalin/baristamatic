class Printer

  def print_inventory(inventory)
    puts "Inventory:"
    inventory.each do |item, quantity|
      puts "#{item[:name].capitalize},#{quantity}"
    end
  end

  def print_menu(menu)
    counter = 1
    puts "Menu:"
    menu.each do |drink|
      puts "#{counter}, #{drink.name.capitalize}, $#{drink.cost}"
      counter += 1
    end
  end

end

# # Menu:
#
# 1,Caffe Americano,$3.30,true
#
# 2,Caffe Latte,$2.55,true
#
# 3,Caffe Mocha,$3.35,true
#
# 4,Cappuccino,$2.90,true
#
# 5,Coffee,$2.75,true
#
# 6,Decaf Coffee,$2.75,true


require_relative 'drink'
require_relative 'ingredient'

class Store

  attr_reader :inventory, :menu

  DEFAULT_INVENTORY =
    { Ingredient.new("coffee", 0.75) => 10,
      Ingredient.new("decalf coffee", 0.75) => 10,
      Ingredient.new("sugar", 0.25) => 10,
      Ingredient.new("cream", 0.25) => 10,
      Ingredient.new("steamed milk", 0.35) => 10,
      Ingredient.new("foamed milk", 0.35) => 10,
      Ingredient.new("espresso", 1.10) => 10,
      Ingredient.new("cocoa", 0.90) => 10,
      Ingredient.new("whipped cream", 1.00)  => 10
    }

    DEFAULT_MENU =
      { 
      }

  def initialize(args = {})
    @inventory = args.fetch(:inventory, DEFAULT_INVENTORY)
    @menu = args.fetch(:menu, {DEFAULT_MENU})
  end

end


require_relative 'drink'
require_relative 'ingredient'

class Store

  attr_reader :inventory, :menu

  DEFAULT_INVENTORY =
    { Ingredient::COCOA => 10,
      Ingredient::COFFEE => 10,
      Ingredient::CREAM => 10,
      Ingredient::DECAF_COFFEE => 10,
      Ingredient::ESPRESSO => 10,
      Ingredient::FOAMED_MILK => 10,
      Ingredient::STEAMED_MILK => 10,
      Ingredient::SUGAR => 10,
      Ingredient::WHIPPED_CREAM  => 10
    }

    DEFAULT_MENU =
      [ Drink.new({name: "cafe americano",ingredients: {Ingredient::ESPRESSO => 3}}),
      Drink.new({name: "caffe latte",ingredients: {Ingredient::ESPRESSO => 2, Ingredient::STEAMED_MILK => 1}}),
      Drink.new({name: "caffe mocha",ingredients: {Ingredient::ESPRESSO => 1,Ingredient::STEAMED_MILK => 1, Ingredient::COCOA => 1, Ingredient::WHIPPED_CREAM => 1}}),
      Drink.new({name: "cappuccino",ingredients: {Ingredient::ESPRESSO => 2,Ingredient::STEAMED_MILK => 1, Ingredient::FOAMED_MILK => 1}}),
      Drink.new({name: "coffee",ingredients: {Ingredient::COFFEE => 3,Ingredient::SUGAR => 1, Ingredient::CREAM => 1}}),
      Drink.new({name: "decaf coffee",ingredients: {Ingredient::DECAF_COFFEE => 3,Ingredient::SUGAR => 1, Ingredient::CREAM => 1}}),
      ]

  def initialize(args = {})
    @inventory = args.fetch(:inventory, DEFAULT_INVENTORY)
    @menu = args.fetch(:menu, DEFAULT_MENU)
  end

  def in_stock?(drink)
    drink.ingredients.each do |i, q|
      return false if inventory[i] < q
    end
    true
  end

end

# store = Store.new

# coffee = Drink.new({name: "coffee",ingredients: {Ingredient::COFFEE => 3,Ingredient::SUGAR => 1, Ingredient::CREAM => 1}})
#  coffee.ingredients
#
# p store.in_stock?(coffee)

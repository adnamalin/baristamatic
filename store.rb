
require_relative 'drink'
require_relative 'ingredient'

class Store

  attr_reader :inventory, :menu

  DEFAULT_INVENTORY =
    { Ingredient::COFFEE => 10,
      Ingredient::DECAF_COFEE => 10,
      Ingredient::SUGAR => 10,
      Ingredient::CREAM => 10,
      Ingredient::STEAMED_MILK => 10,
      Ingredient::FOAMED_MILK => 10,
      Ingredient::ESPRESSO => 10,
      Ingredient::COCOA => 10,
      Ingredient::WHIPPED_CREAM  => 10
    }

    DEFAULT_MENU =
      [ Drink.new({name: "coffee",ingredients: {"coffee" => 1,"sugar" => 1, "cream" => 1}}),
      Drink.new({name: "decaf coffee",ingredients: {"decaf coffee" => 3,"sugar" => 1, "cream" => 1}}),
      Drink.new({name: "caffe latte",ingredients: {"espresso" => 2,"steamed milk" => 1}}),
      Drink.new({name: "cafe americano",ingredients: {"espresso" => 3}}),
      Drink.new({name: "caffe mocha",ingredients: {"espresso" => 1,"steamed milk" => 1, "cocoa" => 1, "whipped cream" => 1}}),
      Drink.new({name: "cappuccino",ingredients: {"espresso" => 2,"steamed milk" => 1, "foamed milk" => 1}})
      ]

  def initialize(args = {})
    @inventory = args.fetch(:inventory, DEFAULT_INVENTORY)
    @menu = args.fetch(:menu, DEFAULT_MENU)
  end

end

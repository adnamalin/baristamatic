require_relative 'ingredient'
class Drink

  attr_reader :name, :ingredients

  def initialize(args = {})
    @name = args.fetch(:name, "no name given")
    @ingredients = args.fetch(:ingredients, {})
  end

  def cost
    ingredients.map{|i, q| i[:unit_cost] * q}.reduce(:+).round(2)
  end

end

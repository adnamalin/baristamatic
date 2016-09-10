class Ingredient

  attr_reader :name, :unit_cost

  def initialize(name, unit_cost)
    @name = name
    @unit_cost = unit_cost
  end

end

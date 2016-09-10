
class Drink

  attr_reader :name, :ingredients

  def initialize(args = {})
    @name = args.fetch(:name, "no name given")
    @ingredients = args.fetch(:ingredients, {})
  end

end

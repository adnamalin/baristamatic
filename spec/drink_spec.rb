require_relative '../drink'
require_relative '../ingredient'

RSpec.describe Drink do

  let(:coffee_ingredients) {{Ingredient.new("coffee", 0.75)=> 3,Ingredient.new("sugar", 0.25) => 1,   Ingredient.new("cream", 0.25) => 1}}
  let(:coffee) { Drink.new({name: "coffee",ingredients: coffee_ingredients})}

  describe 'attributes' do

    it 'has a name' do
      expect(coffee.name).to eq 'coffee'
    end

    it 'has ingredients' do
      expect(coffee.ingredients).to eq(coffee_ingredients)
    end

  end

end

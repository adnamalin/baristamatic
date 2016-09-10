require_relative '../ingredient'

RSpec.describe Ingredient do

  let(:coffee) { Ingredient.new("coffee", 0.75) }

  describe 'attributes' do
    it 'has a name' do
      expect(coffee.name).to eq 'coffee'
    end

    it 'has menu with drinks
    ' do
      expect(coffee.unit_cost).to eq 0.75
    end
  end

end

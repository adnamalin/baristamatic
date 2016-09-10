require_relative '../drink'

RSpec.describe Drink do

  let(:coffee) { Drink.new({name: "coffee",ingredients: {"coffee" => 1,"sugar" => 1, "cream" => 1}})}

  describe 'attributes' do

    it 'has a name' do
      expect(coffee.name).to eq 'coffee'
    end

    it 'has ingredients' do
      expect(coffee.ingredients).to eq({"coffee" => 1,"sugar" => 1, "cream" => 1})
    end

  end

end

require_relative '../store'
require_relative '../ingredient'
require_relative '../drink'

RSpec.describe Store do

  let(:coffee_ingredients) {{Ingredient::COFFEE=> 3,Ingredient::SUGAR => 1, Ingredient::CREAM => 1}}
  let(:coffee) { Drink.new({name: "coffee",ingredients: coffee_ingredients})}

  let(:store) { Store.new()}

  describe 'attributes' do
    it 'has an inventory' do
      expect(store.inventory).to be_a Hash
    end

    it 'has menu' do
      expect(store.menu).to be_a Array
    end
  end

  describe 'default attributes' do
    it 'has an inventory with defasult stock if not provided' do
      expect(store.inventory).to eq Store::DEFAULT_INVENTORY
    end

    it 'has menu with drinks
    ' do
      expect(store.menu).to eq Store::DEFAULT_MENU
    end
  end

  describe 'check in stock' do
    it 'returns true if inventory has enough units to make drink' do
      expect(store.in_stock?(coffee)).to eq true
    end

    it 'returns false if there are not enough units' do
      store.inventory[{name: "coffee", unit_cost: 0.75}] = 2
      expect(store.in_stock?(coffee)).to eq false
    end
  end

end

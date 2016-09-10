require_relative '../store'
require_relative '../ingredient'

RSpec.describe Store do

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
    it 'has an inventory with default stock if not provided' do
      expect(store.inventory).to eq Store::DEFAULT_INVENTORY
    end

    it 'has menu with drinks
    ' do
      expect(store.menu).to eq Store::DEFAULT_MENU
    end
  end

end

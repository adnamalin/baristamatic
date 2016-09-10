require_relative '../store'
require_relative '../printer'

RSpec.describe Printer do

  let(:store) {Store.new}
  let(:printer) { Printer.new}

  describe 'printing' do
    it '#print_inventory' do
      expect(printer.print_inventory(store.inventory)).to eq Store::DEFAULT_INVENTORY
    end

    it '#print_menu' do
      expect(printer.print_menu(store.menu)).to eq Store::DEFAULT_MENU
    end

  end

end

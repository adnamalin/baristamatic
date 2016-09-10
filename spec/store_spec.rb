require_relative '../store'

RSpec.describe Store do

  let(:store) { Store.new(inventory: {}) }

  describe 'attributes' do
    it 'has an inventory' do
      expect(account.name).to eq 'Backstop Solutions'
    end

    it 'has menu with drinks
    ' do
      expect(account.id).to eq "1234"
    end
  end

end

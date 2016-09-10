require_relative '../ingredient'

RSpec.describe Ingredient do

  describe 'constants' do
    it 'coffee details' do
      expect(Ingredient::COFFEE[:name]).to eq 'coffee'
      expect(Ingredient::COFFEE[:unit_cost]).to eq 0.75
    end
    it 'decaf coffee details' do
      expect(Ingredient::DECAF_COFEE[:name]).to eq 'decaf coffee'
      expect(Ingredient::DECAF_COFEE[:unit_cost]).to eq 0.75
    end
    it 'sugar details' do
      expect(Ingredient::SUGAR[:name]).to eq 'sugar'
      expect(Ingredient::SUGAR[:unit_cost]).to eq 0.25
    end
    it 'cream details' do
      expect(Ingredient::CREAM[:name]).to eq 'cream'
      expect(Ingredient::CREAM[:unit_cost]).to eq 0.25
    end
    it 'steamed milk details' do
      expect(Ingredient::STEAMED_MILK[:name]).to eq 'steamed milk'
      expect(Ingredient::STEAMED_MILK[:unit_cost]).to eq 0.35
    end
    it 'foamed milk details' do
      expect(Ingredient::FOAMED_MILK[:name]).to eq 'foamed milk'
      expect(Ingredient::FOAMED_MILK[:unit_cost]).to eq 0.35
    end
    it 'espresso details' do
      expect(Ingredient::ESPRESSO[:name]).to eq 'espresso'
      expect(Ingredient::ESPRESSO[:unit_cost]).to eq 1.10
    end
    it 'cocoa details' do
      expect(Ingredient::COCOA[:name]).to eq 'cocoa'
      expect(Ingredient::COCOA[:unit_cost]).to eq 0.90
    end
    it 'whipped cream details' do
      expect(Ingredient::WHIPPED_CREAM[:name]).to eq 'whipped cream'
      expect(Ingredient::WHIPPED_CREAM[:unit_cost]).to eq 1.00
    end
  end

end
